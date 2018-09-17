class DropProductCatagories < ActiveRecord::Migration[5.2]
  def change
  	drop_table :product_catagories
  end
end
