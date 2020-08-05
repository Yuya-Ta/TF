class LikesController < ApplicationController
  before_action :authenticate_user

  def post_like_create
    @like = Like.new(user_id: @current_user.id, post_id: params[:post_id])
    @like.save
    redirect_back(fallback_location:"/users/@current_user.id")
  end


  def user_like_create
    @like = Like.new(user_id: @current_user.id, to_id: params[:id])
    @like.save
    redirect_to("/users/#{params[:id]}")
  end



end
