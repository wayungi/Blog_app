class User < ApplicationRecord
    has_many :posts, foreign_key: 'author_id'
    has_many :comments, foreign_key: 'author_id'
    has_many :likes, foreign_key: 'author_id'


   # A method that returns the 3 most recent posts for a given user.
   def get_three_recent_posts
    posts.order(:created_at).first(3)
   end

end
