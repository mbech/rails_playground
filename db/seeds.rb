# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

customer_names = ['Matt', 'John', 'Winny', 'Mary', 'Tex']
14.times do |name|
  customer = Customer.create({name: Faker::Name.name})
  customer.create_address({
    street: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip_code: Faker::Address.zip
  })
  3.times {customer.invoices.create()}
end
