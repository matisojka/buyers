class Variant < ActiveRecord::Base
  belongs_to :product
  has_many :coupons

  validates :is_active, :price, :quantity, presence: true

end

