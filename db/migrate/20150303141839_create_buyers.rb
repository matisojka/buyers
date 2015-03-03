class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :email, null: false
      t.string :password_digest
      t.integer :credits, default: 0

      t.timestamps null: false
    end
  end
end
