class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @user = User.new
    @current_user = @user.current_user
    @post_id = 1 # This part should be revised
  end

  # todo: refactor this code
  def create
    
    author_id =  params[:author_id]
    post_id = params[:post_id]
    text =  params[:text]

    @comment = Comment.new(
      author_id: author_id,
      post_id: post_id,
      text: text,
    )
    if @comment.save
      redirect_to 
    end
  end
end
