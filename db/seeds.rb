# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Variant.destroy_all
Product.destroy_all

variants1 = Variant.create!([
  { price: 100, quantity: 42 },
  { price: 10, quantity: 42 },
  { is_active: false, price: 12, quantity: 11 }
])

product1 = Product.create!(
  title: 'E-bike',
  description: 'No sweating with this bad boy!',
  variants: variants1
)

variants2 = Variant.create!([
  { price: 42, quantity: 42 },
  { price: 35, quantity: 12 },
  { is_active: false, price: 13, quantity: 11 }
])

product2 = Product.create!(
  title: 'Magic Mouse',
  description: "Keep swipin'",
  variants: variants2
)

variants3 = Variant.create!([
  { price: 23, quantity: 1 },
  { price: 35, quantity: 12 },
  { is_active: false, price: 13, quantity: 11 }
])

product3 = Product.create!(
  title: 'Cup of coffee',
  description: 'We know you need it!',
  variants: variants3
)

