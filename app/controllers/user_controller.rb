class UserController < ApplicationController
  # display all users
  def users
    @users = User.all
  end

  def user; end

  def user_posts; end

  def user_post; end
end
