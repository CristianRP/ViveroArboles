categories_list = [
  'Arboles Frutales',
  'Arboles Maderables',
  'Arboles ornamentales',
  'Arboles Papeleros'
]

categories_list.each do |c|
  Category.create(name: c)
end
