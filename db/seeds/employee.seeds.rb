require 'faker'

50.times do 
  Employee.create(
      name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
  )
end