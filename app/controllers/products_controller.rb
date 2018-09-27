class ProductsController < ApplicationController

	def index

		@products = Product.all
		render "index.html.erb"
		@title = "Products"
		
	end

	def show
		@product = Product.find_by(id: params[:id])
		render "show.html.erb"
		
	end

	def new
		@suppliers = Supplier.all
		render "new.html.erb"
		
	end

	def edit
		@product = Product.find(params[:id])
		@suppliers = Supplier.all
		render "edit.html.erb"
		
	end

	def create
		@product = Product.new(
		name: params[:name],
		price: params[:price],
		description: params[:description],
		supplier_id: 1
	)
	 @product.save
	 redirect_to "/products/#{@product.id}"
		
	end
end
