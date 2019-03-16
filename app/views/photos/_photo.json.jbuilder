json.extract! photo, :id, :album_id, :description, :created_at, :updated_at
json.url photo_url(photo, format: :json)
