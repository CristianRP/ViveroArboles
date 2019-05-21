json.extract! payment_detail, :id, :description, :amount, :payment_id, :created_at, :updated_at
json.url payment_detail_url(payment_detail, format: :json)
