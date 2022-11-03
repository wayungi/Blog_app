class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    # @user = User.new
    # @current_user = @user.current_user
    # @post_id = 1 # This part should be revised
  end

  # TODO: refactor this code
  def create
    @comment =  Comment.new(comment_params)
    # @author = Author.find(params[:author_id])
    @post = Post.find(params[:post_id])
    @comment.author = current_user
    @comment.post = @post

    puts ""
    puts "---------------"
    puts @comment
    puts "---------------"
    puts ""
   
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
