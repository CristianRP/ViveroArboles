frutales_list = [
  ['Aguacate', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Naranja', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Guayaba', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Kiwi', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Limon', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Manzana', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Mora', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Nispero', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Pera', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Tamarindo', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)]
]

maderales_list = [
  ['Abeto alpino', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Alcornoque', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Caobo', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Cedro Rojo', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Cipres Arizonico', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Cipres Monterrey', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Fresno', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Pino Criollo', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Pino de Azucar', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Roble Blanco', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
]

ornamentales_list = [
  ['Arce Japones', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Boj Chino', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Bonsai', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Casia Rosado', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Doble Tronco', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Fresno de la Tierra', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Marpacifico', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Olmo Chino', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Pino Siberiano', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Sauce Blanco', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)]
]

papeleros_list = [
  ['Abeno Noble', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Picea Roja', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Picea Siberiana', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Picea Wilsonii', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Pino Arakansas', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Pino de Coreano', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Pino Liso', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Pino Luzón', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Pino Macho', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)],
  ['Pino Tenasserim', Faker::Commerce.price(range = 10..80.0, as_string = true), Faker::Number.between(1, 100)]
]


after :category do 
  category = Category.find_by_name('Arboles Frutales')
  frutales_list.each do |name, price, stock|
    category.products.create(name: name, price: price, stock: stock)
  end

  category1 = Category.find_by_name('Arboles Maderables')
  maderales_list.each do |name, price, stock|
    category1.products.create(name: name, price: price, stock: stock)
  end

  category2 = Category.find_by_name('Arboles ornamentales')
  ornamentales_list.each do |name, price, stock|
    category2.products.create(name: name, price: price, stock: stock)
  end

  category3 = Category.find_by_name('Arboles Papeleros')
  papeleros_list.each do |name, price, stock|
    category3.products.create(name: name, price: price, stock: stock)
  end

end