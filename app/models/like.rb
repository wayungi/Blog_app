class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post

  # A method that updates the likes counter for a post.
  def update_post_likes_counter
    post.update(likes_counter: post.likes.length)
  end

end
