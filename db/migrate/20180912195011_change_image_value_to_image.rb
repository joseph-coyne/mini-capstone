class ChangeImageValuesToImage < ActiveRecord::Migration[5.2]
  def change
  	change_column :images, :image_url, :string
  	change_column :images, :product_id, 'integer USING CAST(product_id AS integer)'
  end
end
