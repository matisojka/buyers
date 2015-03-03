class Buyer < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true

  has_many :variants
  has_many :products, through: :variants

end

