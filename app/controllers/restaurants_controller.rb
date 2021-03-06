class RestaurantsController < ApplicationController


#Create
    def new
        @restaurant = Restaurant.new 
        @categories = Category.all
    end 

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.valid?
            @restaurant.save
            redirect_to restaurant_path(@restaurant)
        else 
            render :new
        end 
    end 

#Read 
    def index 
        @restaurants = Restaurant.all
    end 

    def show
        @restaurant = Restaurant.find(params[:id])
    end 

#Update
    def edit 
        @restaurant = Restaurant.find(params[:id])
    end 

    def update 
        @restaurant = Restaurant.find(params[:id])
        @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end 


    private 

    #strong_params 
    def restaurant_params
        params.require(:restaurant).permit(:name, :category_name)
    end 

end



