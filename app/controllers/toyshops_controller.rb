class ToyshopsController < ApplicationController

  def index
    @toyshop = Toyshop.all
  end
 
  
 
  def new
  	@toyshop = Toyshop.new
  end

  def create
    
  	@toyshop=Toyshop.new(user_params)
    if @toyshop.save
           redirect_to toyshops_index_path
      else
      	   redirect_to toyshops_new_path

  	end
  end

 

  def user_params
    params.require(:toyshop).permit(:name, :address, :owner)
  end

  

  def show 
  	    
  	    clicked_id=params[:toyobj]
  	    
  	    @toyshop=Toyshop.find(clicked_id)
  end

  def edit
        clicked_id=params[:toyobj]
        
        @toyshop=Toyshop.find(clicked_id)
  end

  def update
    clicked_id=params[:id]
    puts clicked_id
    @toyshop=Toyshop.find(clicked_id)
      if @toyshop.update(user_params)
        redirect_to toyshops_index_path
      else
        redirect_to toyshops_update_path
      end
  end
  
end
