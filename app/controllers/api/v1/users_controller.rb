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
    user = User.new(username: params[:username], password: params[:password])
  if user.valid?
    user.save
    render json: user
  else
   flash[:notice] = "You need to enter all info!"
  end
end

end
