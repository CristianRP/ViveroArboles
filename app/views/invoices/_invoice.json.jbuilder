json.extract! invoice, :id, :employee_id, :payment_id, :store_id, :customer_id, :amount, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
