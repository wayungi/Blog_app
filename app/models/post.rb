class Post < ApplicationRecord

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  belongs_to :author, class_name: 'User', foreign_key: 'author_id', counter_cache: :posts_counter
  has_many :comments, counter_cache: :comments_counter
  has_many :likes, counter_cache: :likes_counter

  after_initialize :init_comment_count

  def five_recent_comments
    comments.order(:created_at).first(5)
  end

  private

  def init_comment_count
    self.comments_counter ||= 0
    self.likes_counter ||= 0
  end
end
