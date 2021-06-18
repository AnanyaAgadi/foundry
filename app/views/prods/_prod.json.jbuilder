json.extract! prod, :id, :name, :description, :image_url, :created_at, :updated_at
json.url prod_url(prod, format: :json)
