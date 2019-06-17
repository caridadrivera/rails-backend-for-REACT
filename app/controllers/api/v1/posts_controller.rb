class Api::V1::PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts
  end

  def new
    post = Post.new
  end

  # def show
  #   post = Post.find_by(post.id)
  # end

  def create
    post = Post.create(post_params)
    render json: post
     # byebug
  end

  def post_params
    params.require(:post).permit(:user_id, :content, :image_url, :title)
  end

end
