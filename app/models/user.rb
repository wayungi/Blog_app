class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_initialize :init_post_count

  has_many :posts, foreign_key: 'author_id', counter_cache: :posts_counter
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  def current_user
    @user = User.first
  end

  def all_posts
    posts.all
  end

  def three_recent_posts
    posts.order(:created_at).first(3)
  end

  private

  def init_post_count
    self.posts_counter ||= 0
  end
end
