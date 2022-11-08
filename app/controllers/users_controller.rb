class UsersController < ApplicationController
  # display all users
  def index
    @users = User.all
  end

  # Show user details by id  with 3 most rescent comments
  def show
    # @user = User.find(params[:id])
    # @posts = @user.three_recent_posts
  end

  # show all of the posts of a user in summary with thier comments
  # def user_posts
  #   @user = User.find(params[:id])
  #   @posts = @user.all_posts
  # end

  # show a single post in full with all its comments
  # def user_post
  #   @user = User.find(params[:user_id])
  #   @post = @user.posts.find(params[:id])
  #   @comments = @post.comments
  # end
end
