class PostCommentsController < ApplicationController



 def create
    postlmage = Postlmage.find(params[:postlmage_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.postlmage_id = postlmage.id
    comment.save
    redirect_to postlmage_path(postlmage)
 end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end




end
