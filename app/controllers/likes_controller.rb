class LikesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    
    if like.present?
      like.destroy
    else
      Like.create(post_id: params[:post_id], user_id: current_user.id )
    end
    
    redirect_to request.referrer
  end
  
end
