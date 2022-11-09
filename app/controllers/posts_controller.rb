class PostsController < ApplicationController
  
  def index

  end

  def show
    @comments = Post.find(params[:id]).comments
    # @comments = @post.comments
  end
  
  # def new
  #   @post = Post.new
  #   # @user = User.new
  #   # @current_user = @user.current_user
  # end

  

  # def create
  #   @post = Post.new(post_params)
  #   @post.author = current_user
  #   if @post.save
  #     redirect_to
  #   else
  #     render :new
  #   end
  # end

  # private

  # def post_params
  #   params.require(:post).permit(:title, :text)
  # end
end
