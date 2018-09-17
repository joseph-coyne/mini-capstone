class RemovesIntegerFromImages < ActiveRecord::Migration[5.2]
  def change
  	remove_column :images, :integer, :string
  	remove_column :images, :image_url, :string
  end
end
