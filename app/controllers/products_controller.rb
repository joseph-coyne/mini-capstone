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

	def update
		@product = Product.find(params[:id])

		@product.name = params[:name]
		@product.price = params[:price]
		@product.description = params[:description]
		@product.supplier_id = params[:supplier_id]

	  @product.save
	  redirect_to "/products/#{@product.id}"
		
	end

	def create
		@product = Product.new(
		name: params[:name],
		price: params[:price],
		description: params[:description],
		supplier_id: params[:supplier_id]
	)
	 @product.save
	 redirect_to "/products/#{@product.id}"
		
	end
end
