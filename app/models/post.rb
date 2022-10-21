class Post < ApplicationRecord
  # Title must not be blank.
  # Title must not exceed 250 characters.
  validates :title, presence: true, length: {maximum: 250}

  # CommentsCounter must be an integer greater than or equal to zero.
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 

  # LikesCounter must be an integer greater than or equal to zero.
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments
  has_many :likes

  after_initialize :init_comment_count

  # A method that updates the posts counter for a user.
  def update_user_posts_counter
    author.update(posts_counter: author.posts.length)
  end

  # A method which returns the 5 most recent comments for a given post.
  def get_5_recent_comments
    comments.order(:created_at).first(5)
  end

  private
  def init_comment_count
   self.comments_counter ||= 0
   self.likes_counter ||= 0
  end


end
