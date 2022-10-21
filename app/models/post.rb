class Post < ApplicationRecord
  # Title must not be blank.
  # Title must not exceed 250 characters.
  validates :title, presence: true, length: { maximum: 250 }

  # CommentsCounter must be an integer greater than or equal to zero.
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # LikesCounter must be an integer greater than or equal to zero.
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # A method that updates the posts counter for a user => counter_cache: :posts_counter
  belongs_to :author, class_name: 'User', foreign_key: 'author_id', counter_cache: :posts_counter
  has_many :comments, counter_cache: :comments_counter
  has_many :likes, counter_cache: :likes_counter

  after_initialize :init_comment_count

  # A method which returns the 5 most recent comments for a given post.
  def five_recent_comments
    comments.order(:created_at).first(5)
  end

  private

  def init_comment_count
    self.comments_counter ||= 0
    self.likes_counter ||= 0
  end
end
