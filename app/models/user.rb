class User < ApplicationRecord
    # Name must not be blank.
    validates :name, presence: true

    # PostsCounter must be an integer greater than or equal to zero.
    validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 

    
    after_initialize :init_post_count

    has_many :posts, foreign_key: 'author_id'
    has_many :comments, foreign_key: 'author_id'
    has_many :likes, foreign_key: 'author_id'


   # A method that returns the 3 most recent posts for a given user.
   def get_three_recent_posts
    posts.order(:created_at).first(3)
   end

   private
   def init_post_count
    self.posts_counter ||= 0
   end

end
