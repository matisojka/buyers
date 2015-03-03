class Variant < ActiveRecord::Base
  belongs_to :product
  belongs_to :buyer
  has_many :coupons

  validates :price, :quantity, presence: true

  scope :active, -> { where(is_active: true) }

end

