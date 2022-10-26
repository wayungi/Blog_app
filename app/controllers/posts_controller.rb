class PostsController < ApplicationController
  def new
    @post = Post.new
    @user = User.new
    @current_user = @user.current_user
  end

  def create
    @post = Post.new(
      author_id: params[:post][:author_id],
      title: params[:post][:title],
      text: params[:post][:text],
      comments_counter: params[:post][:comments_counter],
      likes_counter: params[:post][:likes_counter]
    )
    @post.save
  end
end
