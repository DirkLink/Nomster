class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites
  end
  def create
    Favorite.create! user_id: current_user.id, name: params[:name], rating: params[:rating], review_count: params[:review_count], address: params[:address], url: params[:url]
    head :ok
  end
  def destroy
    current_user.favorites.find_by_id(params[:id]).delete
    head :ok
  end
end
