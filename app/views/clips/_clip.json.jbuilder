json.extract! clip, :id, :title, :body, :image, :url, :created_at, :updated_at
json.url clip_url(clip, format: :json)
