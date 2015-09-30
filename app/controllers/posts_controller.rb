class PostsController < ApplicationController

	def new
		
		@drink = Drink.find(params[:drink_id])
		@post = @drink.posts.new
	end

	def create
	end


	def edit
	end

	def update
	end

	def destory
	end



end
