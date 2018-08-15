class Clip < ApplicationRecord
  before_save :create_meta, if: ->{will_save_change_to_url?}
  
  def create_meta
    meta = MetaInspector.new(url)
    self.title = meta.title
    self.body = meta.description
    self.image = meta.images.best
  rescue => error
    errors.add(:base, "Please fix the error #{error.message}")
    throw :abort
  end
end
