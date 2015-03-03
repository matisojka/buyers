class Product < ActiveRecord::Base
  has_many :variants

  validates :title, presence: true

  def cheapest_price
    variants.active.minimum(:price)
  end

end

