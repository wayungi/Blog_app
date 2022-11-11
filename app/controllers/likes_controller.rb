class LikesController < ApplicationController
  def create
    @user = User.new
    @like = @user.current_user.likes.new(like_params)

    if @like.save
      redirect_to @like.post
    else
      flash[:notice] = @like.errors.full_messages.to_sentence
    end
  end

  def destroy
    @user = User.new
    @like = @user.current_user.likes.find(params[:id])
    post = @like.post
    @like.destroy
    redirect_to post
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
