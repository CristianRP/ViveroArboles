payment_types_list = [
  'En linea',
  'Efectivo',
  'Tarjeta de credito',
  'Cheque'
]

payment_types_list.each do |p|
  PaymentType.create(description: p)
end
