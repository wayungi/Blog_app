class Like < ApplicationRecord
  validates :post_id, uniqueness: { scope: author_id }
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post, counter_cache: :likes_counter
end
