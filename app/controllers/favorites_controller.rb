class FavoritesController < ApplicationController

  def create
    postlmage = Postlmage.find(params[:postlmage_id])
    favorite = current_user.favorites.new(postlmage_id: postlmage.id)
    favorite.save
    redirect_to postlmage_path(postmage)
  end

  def destroy
    postlmage = Postlmage.find(params[:postlmage_id])
    favorite = current_user.favorites.find_by(postlmage_id: postlmage.id)
    favorite.destroy
    redirect_to postlmage_path(postlmage)
  end

end
