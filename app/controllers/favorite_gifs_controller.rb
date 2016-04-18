class FavoriteGifsController < ApplicationController

  before_action :set_project
  
  def create
    if Favorite.create(favorited: @gif, user: current_user)
      redirect_to @gif, notice: 'Gif has been favorited'
    else
      redirect_to @gif, alert: 'Something went wrong.'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @gif.id, user_id: current_user.id).first.destroy
    redirect_to @gif, notice: 'Gif is no longer in favorites'
  end
  
  private
  
  def set_project
    @gif = Gif.find(params[:gif_id] || params[:id])
  end

end