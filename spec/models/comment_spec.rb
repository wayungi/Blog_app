require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Test  update_post_comments_counter method' do
    first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                             bio: 'Teacher from Mexico.')
    first_post = Post.create(author: first_user, title: '1st', text: 'This is my first post')
    # Add 5 comments for first_post
    Comment.create(post: first_post, author: first_user, text: 'Hi Tom!')
    Comment.create(post: first_post, author: first_user, text: 'tests are working!')
    Comment.create(post: first_post, author: first_user, text: 'Ruby is tricky!')
    Comment.create(post: first_post, author: first_user, text: 'Good luck!')
    Comment.create(post: first_post, author: first_user, text: 'Thanks')
    Comment.create(post: first_post, author: first_user, text: 'See you again')

    it 'update_post_comments_counter should return 5 records' do
      expect(first_post.comments_counter).to eq(6)
    end
  end
end
