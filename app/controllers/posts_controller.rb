class PostsController < ApplicationController
  def new
    @post = Post.new
    @user = User.new
    @current_user = @user.current_user
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:author_id, :title, :text, :comments_counter, :likes_counter)
  end
end
