# shirts_controller.rb

class ShirtsController < ApplicationController
	def index
		@shirts = Shirt.search_for(params[:q])
	end

	def new
		@shirt = Shirt.new
	end

	def create
		@shirt = Shirt.new(params)
		if @shirt.save
			#success
			redirect_to @shirt
		else
			render 'new'
		end
	end

	def show
		@shirt = Shirt.find(params[:id])
	end
end