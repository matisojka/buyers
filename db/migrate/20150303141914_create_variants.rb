class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.belongs_to :buyer, index: true

      t.boolean :is_active, null: false, default: true
      t.integer :price, null: false, default: 0
      t.integer :quantity, null: false, default: 0

      t.timestamps null: false
    end

    add_foreign_key :variants, :buyers
  end
end
