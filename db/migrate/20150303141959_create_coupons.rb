class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.belongs_to :variant, index: true
      t.string :code, null: false

      t.timestamps null: false
    end

    add_foreign_key :coupons, :variants
  end
end
