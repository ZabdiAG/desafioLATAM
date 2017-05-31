json.extract! order, :id, :product_id, :user_id, :price, :cart_id, :created_at, :updated_at
json.url order_url(order, format: :json)
