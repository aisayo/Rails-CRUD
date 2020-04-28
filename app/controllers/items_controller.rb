class ItemsController < ApplicationController


#Create
    def new
        @item = Item.new 
    end 

    def create
        @item = Item.new(item_params)
        if @item.save 
            redirect_to items_show_path(@item)
        else 
            redirect_to items_new_path
        end 
    end 


#Read 
    def index 
        @items = Item.all
    end 

    def show
        @item = Item.find(params[:id])
    end 


    private 

    #strong_params 
    def item_params
        params.require(:item).permit(:title, :description)
    end 

end
