class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def new
    user = User.new
  end

  def create
     # byebug
    user = User.create(username: params[:username], password: params[:password])
    render json: user
  end

  private


end
