class UsersController < ApplicationController
  # display all users
  def index
    @users = User.all
  end

  # Show user details by id  with 3 most rescent comments
  def show
    params[:id]
    @user = User.find(params[:id])
    @posts = @user.three_recent_posts
  end

  def create
  end

end
