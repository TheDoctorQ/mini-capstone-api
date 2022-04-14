class RemoveInventoryFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :inventory, :integer
  end
end
