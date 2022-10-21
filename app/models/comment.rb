class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post


  # A method that updates the comments counter for a post.
  def update_post_comments_counter
    post.update(comments_counter:post.comments.length )
  end

end
