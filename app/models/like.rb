class Like < ApplicationRecord
  validates :author_id, uniqueness: { scope: :post_id }
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post, counter_cache: :likes_counter
end
