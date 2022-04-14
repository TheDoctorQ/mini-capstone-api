class ChangeInventoryToQuantity < ActiveRecord::Migration[7.0]
  
  def change
    remove_column :products, :inventory, :integer
  end
  
  def change
    add_column :products, :quantity, :integer
  end
  
end
