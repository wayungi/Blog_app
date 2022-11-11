class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    params[:id]
    @user = User.find(params[:id])
    @posts = @user.three_recent_posts
  end

  def create
  end

end
