class Api::V1::PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts
  end

  def new
    post = Post.new
  end

  def create

    post = Post.create(post_params)
    render json: post
  end

  def post_params
    params.require(:post).permit(:user_id, :content, :image_url)
  end

end
