class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit

  end

  def update

  end

  def create
    @restaurant = Restaurant.new(set_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
