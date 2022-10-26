class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @user = User.new
    @current_user = @user.current_user
    @post_id = 1 # This part should be revised
  end
end
