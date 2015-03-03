require 'factory_girl'

FactoryGirl.define do
  factory :variant do
    is_active true
    price { rand(100) }
    quantity { rand(100) }

    product
  end
end


