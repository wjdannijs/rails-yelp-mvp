class Admin::RestaurantsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @restaurants = Restaurant.all
  end
end
