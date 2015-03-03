class Buyer < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true

end

