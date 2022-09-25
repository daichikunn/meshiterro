class PostlmagesController < ApplicationController
  def new
    @postlmage = Postlmage.new

  end

  def create
    @postlmage = Postlmage.new(post_image_params)
    @postlmage.user_id = current_user.id
     if @postlmage.save
      redirect_to postlmages_path
    else
      render :new
    end
  end

  def index
    @postlmages = Postlmage.page(params[:page])
  end

  def show
    @postlmage = Postlmage.find(params[:id])
    @post_comment = PostComment.new

  end

  def destroy
    @postlmage = Postlmage.find(params[:id])
    @postlmage.destroy
    redirect_to postlmages_path
  end

    private

  def post_image_params
    params.require(:postlmage).permit(:shop_name, :image, :caption)
  end

end
