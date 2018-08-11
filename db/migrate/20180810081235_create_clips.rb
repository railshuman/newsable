class CreateClips < ActiveRecord::Migration[5.2]
  def change
    create_table :clips do |t|
      t.string :title
      t.text :body
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
