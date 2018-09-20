class Api::ProductsController < ApplicationController

before_action :authenticate_admin, except: [:index, :show]

def index

	@products = Product.all
	

	if params[:name]
		@products = Product.where("name LIKE ?", "%#{params[:name]}%")
	end


	if params[:category]
		category = Category.find_by(name: params[:category])
		@products = category.products
	end

	render 'index.json.jbuilder'

end

def show
	@product = Product.find_by(id: params[:id])
	render 'show.json.jbuilder'
	
end



def create

	@product = Product.new(
		name: params[:name],
		price: params[:price],
		description: params[:description],
		supplier_id: params[:supplier_id]
	)
	if @product.save
	 render "show.json.jbuilder"
	else
		render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
	end
end

def update
	@product = Product.find_by(id: params[:id])

	@product.name = params[:name] || @product.name
	@product.price = params[:price] || @product.price
	@product.image_url = params[:image_url] || @product.image_url
	@product.description = params[:description] || @product.description
	if @product.save
		render 'show.json.jbuilder'
	else
		render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
	end
end

def destroy
	@product = Product.find(params[:id])
	@product.destroy
	render json: {message: "Item deleted from store."}
end


end