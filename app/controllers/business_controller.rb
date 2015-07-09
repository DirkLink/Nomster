class BusinessController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    category = "food"
    loc = [38.9014957,-77.0391753]
    @restaurants = YelpApi.restaurants_nearby loc, category
  end
end


