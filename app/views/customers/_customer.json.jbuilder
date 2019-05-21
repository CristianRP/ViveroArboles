json.extract! customer, :id, :name, :last_name, :company_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
