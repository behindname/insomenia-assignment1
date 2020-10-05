class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    Comment.create(body: params[:body], post_id: params[:post_id], user_id: current_user.id)
    redirect_to request.referrer
  end

  def destroy
    @post = Post.find(params[:post_id])
    comment = @post.comments.find(params[:id])
    comment.destroy
    redirect_to request.referrer
  end
  
end
