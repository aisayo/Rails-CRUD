class ItemsController < ApplicationController


#Create
    def new
        @item = Item.new 
    end 

    def create
        @item = Item.new(item_params)
        if @item.valid?
            @item.save
            redirect_to item_path(@item)
        else 
            render :new
        end 
    end 

#Read 
    def index 
        @items = Item.all
    end 

    def show
        @item = Item.find(params[:id])
    end 

#Update
    def edit 
        @item = Item.find(params[:id])
    end 

    def update 
        @item = Item.find(params[:id])
        @item.update(item_params)
        redirect_to item_path(@item)
    end 


    private 

    #strong_params 
    def item_params
        params.require(:item).permit(:title, :description)
    end 

end



