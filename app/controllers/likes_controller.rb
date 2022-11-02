class LikesController < ApplicationController
  # handle creating new like
  def create
    @user = User.new
    @like = @user.current_user.likes.new(like_params)

    if !@like.save
      flash[:notice] = @like.errors.full_messages.to_sentence
      puts "-----------------"
      puts @like.errors.full_messages.to_sentence
      puts "---------------------"
    else
      redirect_to @like.post
    end
  end

  # handles unliking
  def destroy
    @user = User.new
    @like = @user.current_user.likes.find(params[:id])
    # keep reference to the post
    post = @like.post
    @like.destroy
    redirect_to post
  
  end

  private
  def like_params
    params.require(:like).permit(:post_id)
  end
end
