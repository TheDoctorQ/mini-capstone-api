class ChangeProducts < ActiveRecord::Migration[7.0]
  
  def change
    change_column :products, :description, :text 
  end
  
  def change
    add_column :products, :inventory, :integer
  end


end
