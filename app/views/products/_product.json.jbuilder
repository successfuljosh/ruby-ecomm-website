json.extract! product, :id, :name, :prices, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
