# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all
Product.create([
  { title: 'E-bike', description: 'No sweating with this bad boy!' },
  { title: 'Magic Mouse', description: "Keep swipin'" },
  { title: 'Cup of coffee', description: 'We know you need it!' }
])
