class AddStockToProducts < ActiveRecord::Migration[5.2]
  def change
  	add_column :product, :stock, :boolean
  end
end
