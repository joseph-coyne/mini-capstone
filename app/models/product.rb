class Product < ApplicationRecord
	validates :name, presence: true
	validates :name, length: { in: 5..50 }
	validates :price, numericality: { greater_than: 0}
	validates :description, length: { in: 5..1000 }


	has_many :product_categories
	has_many :orders
	belongs_to :supplier
	has_many :images
	
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
		
end