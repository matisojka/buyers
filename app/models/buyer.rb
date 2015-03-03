class Buyer < ActiveRecord::Base

  validates :email, presence: true

end

