class UserController < ApplicationController
  # display all users
  def users
    @users = User.all
  end

  def user
    # pass id as param
    @user = User.find_by(id: 1)
    @posts = @user.three_recent_posts

  end

  def user_posts
    # pass user id param
    @user = User.find_by(id: 1)
    @posts = @user.all_posts
    
   
  
  end

  def user_post; end
end
