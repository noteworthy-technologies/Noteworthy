json.extract! entry, :id, :title, :content, :url, :created_at, :updated_at
json.url entry_url(entry, format: :json)
