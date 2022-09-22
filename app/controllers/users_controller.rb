class UsersController < ApplicationController
  def show

    @user = User.find(params[:id])
    @postlmages = @user.postlmages
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end
  
  def destroy
  PostComment.find(params[:id]).destroy
  redirect_to postlmage_path(params[:post_image_id])
    
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
