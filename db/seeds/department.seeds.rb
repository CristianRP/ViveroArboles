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

region_metro = [
  'Guatemala'
]

region_norte = [
  'Alta Verapaz',
  'Baja Verapaz'
]

region_nororiente = [
  'Chiquimula',
  'El Progreso',
  'Izabal',
  'Zacapa'
]

region_suroriente = [
  'Jalapa',
  'Jutiapa',
  'Santa Rosa'
]

region_central = [
  'Chimaltenango',
  'Escuintla',
  'Sacatepéquez'
]

region_suroccidente = [
  'Retalhuleu',
  'San Marcos',
  'Sololá',
  'Suchitepéquez',
  'Totonicapán',
  'Quetzaltenango'
]

region_noroccidente = [
  'Huehuetenango',
  'Quiché'
]

region_peten = [
  'Petén'
]


after :region do
  region = Region.find_by_name(regions_list[0])
  region.departments.create(name: region_metro[0])
  region1 = Region.find_by_name(regions_list[1])
  region_norte.each do |r|
    region1.departments.create(name: r)
  end
  region2 = Region.find_by_name(regions_list[2])
  region_nororiente.each do |r|
    region2.departments.create(name: r)
  end
  region3 = Region.find_by_name(regions_list[3])
  region_suroriente.each do |r|
    region3.departments.create(name: r)
  end
  region4 = Region.find_by_name(regions_list[4])
  region_central.each do |r|
    region4.departments.create(name: r)
  end
  region5 = Region.find_by_name(regions_list[5])
  region_suroccidente.each do |r|
    region5.departments.create(name: r)
  end
  region6 = Region.find_by_name(regions_list[6])
  region_noroccidente.each do |r|
    region6.departments.create(name: r)
  end
  region7 = Region.find_by_name(regions_list[7])
  region_peten.each do |r|
    region7.departments.create(name: r)
  end
end