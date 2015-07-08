class BusinessController < ApplicationController

  @category = "food"
  @loc = [38.9014957,-77.0391753]
  @restaurants = YelpApi.restaurants_nearby @loc
  
end
