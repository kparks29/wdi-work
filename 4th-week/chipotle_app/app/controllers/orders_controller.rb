class OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end

	def show
		@order = Order.find(params[:id])
	end

	def create
		@order = Order.new(order_params)
		@order.toppings = assign_toppings(@order)
		if @order.save
			redirect_to order_path(@order)
		else
			render @order
		end

	end

	def assign_toppings(order)
		toppings = []
		if order.rice == "1"
			toppings << "Cliantro-Lime Rice"
		end
		if order.cheese == "1"
			toppings << "Cheese"
		end
		if order.guac == "1"
			toppings << "Guacamole"
		end
		if order.scream == "1"
			toppings << "Sour Cream"
		end
		if order.lettuce == "1"
			toppings << "Romaine Lettuce"
		end
		combined = combine_toppings(toppings)
		return combined
	end

	def combine_toppings(toppings)
		combine = toppings.join(", ")
		return combine
	end

	private

	def order_params
		params.require(:order).permit(:name,:protein,:beans,:salsa,:rice,:cheese,:scream,:guac,:lettuce,:toppings)
	end

end
