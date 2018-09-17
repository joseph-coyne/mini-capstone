class Api::OrdersController < ApplicationController

	before_action :authenticate_user
	def index
		@orders = current_user.order
		render 'index.json.jbuilder'
	end


	def create
		@order = Order.new(
			user_id: current_user.id,
			product_id: params[:product_id],
			quantity: params[:quantity],
		)

		subtotal = @order.product.price * @order.quantity
		tax = subtotal * 0.07
		total = tax + subtotal

		@order.subtotal = subtotal
		@order.tax = tax
		@order.total = total

		if @order.save
			render 'show.json.jbuilder'
		else
			render json: {errors: user.errors.full_messages}, status: :bad_request
		end
	end

	
end