class DrinksController < ApplicationController
	def index
		#flash[:notice]="Hi kobe, this is a notice msg!!!"
		@drinks = Drink.all
	end
 def show
 end

 def new
	@drink = Drink.new
 end
  
 def edit
 end

 def create
 end

 def update
 end

 def destroy
 end

end
