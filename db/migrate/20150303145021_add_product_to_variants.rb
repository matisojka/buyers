class AddProductToVariants < ActiveRecord::Migration
  def change
    add_column :variants, :product_id, :integer, index: true
  end
end
