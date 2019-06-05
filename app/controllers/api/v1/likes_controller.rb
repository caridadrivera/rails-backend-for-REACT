class Api::V1::LikesController < ApplicationController

  def index
    posts = Like.alls
    render json: likes
  end

  def new
    like = Like.new
  end

  def create

    like = Like.create(like_params)
    render json: like
  end

  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end

end
