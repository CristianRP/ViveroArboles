categories_list = [
    'Arboles Frutales',
    'Arboles Maderables',
    'Arboles ornamentales',
    'Arboles Papeleros'
  ]
  
  after :category do
    category = Category.find_by_name(categories_list[0])
    category1 = Category.find_by_name(categories_list[1])
    category2 = Category.find_by_name(categories_list[2])
    category3 = Category.find_by_name(categories_list[3])
    category.taxes.create(description: 'IVA',  value: 12)
    category1.taxes.create(description: 'ISS', value: 7)
    category2.taxes.create(description: 'IVV', value: 8)
    category3.taxes.create(description: 'ILS', value: 20)
  end