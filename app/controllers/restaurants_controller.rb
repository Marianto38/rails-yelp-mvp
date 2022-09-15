class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurants_params)
    @restaurant.save
      if @restaurant.save
      redirect_to restaurants_path
      else
        render :new, status: :unprocessable_entity
      end
  end


  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant =Restaurant.find(params[:id])
    @restaurant.update(restaurants_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end


  private
  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
