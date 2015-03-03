require 'factory_girl'

FactoryGirl.define do
  factory :buyer do
    name 'Mati'
    email 'y@example.com'
    password '12345678'
    credits 100
  end
end


