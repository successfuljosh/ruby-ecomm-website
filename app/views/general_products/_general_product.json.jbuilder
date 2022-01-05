json.extract! general_product, :id, :name, :price, :description, :created_at, :updated_at
json.url general_product_url(general_product, format: :json)
