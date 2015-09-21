class DrinksController < ApplicationController
	def index
		#flash[:notice]="Hi kobe, this is a notice msg!!!"
		@drinks = Drink.all
	end
 def show
	puts params
	mylog("show detail")
	@drink = Drink.find(params[:id])
	@posts = @drink.posts

 end

 def new
	@drink = Drink.new
 end
  
 def edit
	mylog("edit page")
	@drink = Drink.find(params[:id])
	
 end

 def create
	@drink = Drink.create(drink_params)
	if @drink.save
		mylog("create go~")
		#flash[:notice] = "Create drink success!!!"
		redirect_to drinks_path,notice:"Create Drink Success"
	else
		render :new
	end

 end

 def update
	#Parameters: {"utf8"=>"✓", "authenticity_token"=>"MI4QCwuPqc6N6YedyQ1v35j6xXFxHuWus6Nb65EfW10vd4llF6VYj/nWDa8P1tmy3o/vnip5/Ntl1OF48/f0lQ==", "drink"=>{"name"=>"CoCoLa", "price"=>"50", "description"=>"it's good drink"}, "commit"=>"Submit", "id"=>"1"}[kobelog]update page {"name"=>"CoCoLa", "price"=>"50", "description"=>"it's good drink"}


	mylog("update page")
	puts drink_params
	@drink = Drink.find(params[:id])
	if @drink.update(drink_params)
		redirect_to drinks_path, notice:"Modified Success!!!"
	else
		mylog("!!!error!!!, updated drink fail")
		#flash.now[:warning] = "some fields can't be blank!!!"
		render :exit
	end
	
 end

 def destroy
	mylog("destory action")
	@drink = Drink.find(params[:id])
	@drink.destroy
	redirect_to drinks_path, alert:"You deleted a drink"
 end

 def mylog(log)
	puts "[kobelog]"+log
 end

 private 
	def drink_params
		params.require(:drink).permit(:name, :price, :description)
	end
end
