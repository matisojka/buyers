class AddIndexToBuyers < ActiveRecord::Migration
  def change
    add_index :buyers, :email
  end
end
