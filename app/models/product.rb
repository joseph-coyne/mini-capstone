class Product < ApplicationRecord
	validates :name, presence: true
	validates :name, length: { in: 1..50 }
	validates :price, numericality: { greater_than: 0}
	validates :description, length: { in: 1..1000 }

#associations--------------------------------------

#join table
	has_many :product_categories
	has_many :categories, through: :product_categories


#product attributes
	has_many :orders
	belongs_to :supplier
	has_many :images

	has_many :carted_products

	
	def is_discounted?
		price <= 2 
  end

	def tax
	  price * 0.09
	end

	def total
  	price + tax
	end


	def supplier
		Supplier.find_by(id: supplier_id)
	end

	def category_names
		categories.map {  |category|  category.name}
	end
		
end