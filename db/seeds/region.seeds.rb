regions_list = [
  'Región Metropolitana',
  'Región Norte',
  'Región Nororiental',
  'Región Suroriental',
  'Región Central',
  'Región Suroccidental',
  'Región Noroccidental',
  'Región Petén'
]

regions_list.each do |name|
  Region.create(name: name)
end