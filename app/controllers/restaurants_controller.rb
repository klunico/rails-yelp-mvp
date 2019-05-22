class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all(restaurant.name)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
  end
end
