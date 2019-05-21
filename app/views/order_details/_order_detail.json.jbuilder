json.extract! order_detail, :id, :invoice_id, :product_id, :quantity, :amount, :municipality_id, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
