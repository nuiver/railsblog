json.extract! blogpost, :id, :title, :text, :featured, :created_at, :updated_at
json.url blogpost_url(blogpost, format: :json)