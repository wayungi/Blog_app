class PostsController < ApplicationController
  def new
    @post = Post.new
    @user = User.new
    @current_user = @user.current_user
  end
end
