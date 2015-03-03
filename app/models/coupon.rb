class Coupon < ActiveRecord::Base
  belongs_to :variant

  validates :code, presence: true

end

