class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments
  has_many :likes


  # A method that updates the posts counter for a user.

  # A method which returns the 5 most recent comments for a given post.
  def get_5_recent_comments
    comments.order(:created_at).first(5)
  end

end
