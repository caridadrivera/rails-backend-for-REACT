class FriendshipsController < ApplicationController

  def new
    @users = User.all
    @friendship = Friendship.new

  end

  def show
    render json: user
  end

  def create
    @friendship = Friendship.create(user_id: user.id, friend_id: params[:friend_id])

  end

end
