class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @user = User.new
    @current_user = @user.current_user
    @post_id = 1 # This part should be revised
  end

  def create 
    @comment = Comment.new(
      author_id: params[:comment][:author_id],
      post_id: params[:comment][:post_id],
      text: params[:comment][:text]
    )
    @comment.save
  end
end
