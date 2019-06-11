100.times do
  payment = Payment.new
  payment.payment_type = PaymentType.all[rand(0..3)]
  payment.amount = 0
  total_order = 0
  payment.save
  invoice = Invoice.new
  invoice.employee = Employee.all[rand(0..49)]
  invoice.payment = payment
  invoice.store = Store.all[(rand(0..6))]
  invoice.customer = Customer.all[rand(0..49)]
  invoice.date_order = Faker::Date.backward(1095)
  invoice.save
  4.times do
    order = OrderDetail.new
    order.invoice = invoice
    order.product = Product.all[rand(0..39)]
    order.quantity = Faker::Number.within(1..10)
    order.amount = (order.quantity * order.product.price)
    order.municipality = Municipality.all[rand(0..49)]
    order.save
    total_order += order.amount
  end
  payment.amount = total_order
  invoice.amount = payment.amount
  invoice.save
  4.times do
    payment_d = PaymentDetail.new
    payment_d.description = "Pago #{rand(1..4)}"
    payment_d.amount = (invoice.amount / 4)
    payment_d.payment = payment
    payment_d.save
  end
  payment.save
  invoice.save
end


# 50 employees
# 7 stores
# 50 customers
# payment_id (Detalle)

# invoice 
# -> order details 
# --> payments
# ---> payment_details
