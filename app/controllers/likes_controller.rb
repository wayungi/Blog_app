class LikesController < ApplicationController
  # handle creating new like
  def create
    @like = @user.likes.new
  end

  # handles unliking
  def destroy; end
end
