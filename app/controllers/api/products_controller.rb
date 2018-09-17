class Api::ProductsController < ApplicationController

def index
	@products = Product.all.order(:id)
	if params[:name]
		@products = Product.where("name LIKE ?", "%#{params[:name]}%")
	end
	render 'index.json.jbuilder'
end

def show
	@product = Product.find_by(id: params[:id])
	render 'show.json.jbuilder'
	
end

before_action :authenticate_admin

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