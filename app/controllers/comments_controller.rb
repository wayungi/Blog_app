class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  # TODO: refactor this code
  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comment.author = current_user
    @comment.post = @post
    
    if @comment.save
      redirect_to comments_path
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
