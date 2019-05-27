require 'faker'

companies_list = [
  ['Luces del Norte S.A. (Grupo Cobán)', Faker::Address.full_address],
  ['Clariant Guatemala S.A.', Faker::Address.full_address],
  ['Sacos del Atlántico, S. A.', Faker::Address.full_address],
  ['Agropecuaria Altorr, S.A.', Faker::Address.full_address],
  ['Agrocaribe', Faker::Address.full_address],
  ['El Injerto Café', Faker::Address.full_address],
  ['Autollantas', Faker::Address.full_address],
  ['Financiera Summa', Faker::Address.full_address],
  ['Cervecería C.A.', Faker::Address.full_address],
  ['Grupo A', Faker::Address.full_address],
  ['Minera San Rafael', Faker::Address.full_address],
  ['Seguros G&T, S.A.', Faker::Address.full_address],
  ['Megaproductos S.A.', Faker::Address.full_address],
  ['Grupo ITSA', Faker::Address.full_address],
  ['Intebonsa, S.A.', Faker::Address.full_address],
  ['Metalgráfica S. A.', Faker::Address.full_address]
]

companies_list.each do |name, address|
  Company.create(name: name, address: address)
end
