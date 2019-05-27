stores_list = [
  ['Vivero Naranjo', Faker::Address.full_address],
  ['Vicero Zona 1', Faker::Address.full_address],
  ['Vivero Reforma', Faker::Address.full_address],
  ['Vivero Atanasio', Faker::Address.full_address],
  ['Vivero Madero Roosvelt', Faker::Address.full_address],
  ['Vivero Pradera zona 10', Faker::Address.full_address],
  ['Vivero Metro norte', Faker::Address.full_address]
]

stores_list.each do |name, address|
  Store.create(name: name, address: address)
end