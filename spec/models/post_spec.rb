require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Test Post validators' do
    first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                             bio: 'Teacher from Mexico.')
    first_post = Post.create(author: first_user, title: '1st', text: 'This is my first post')

    before { first_post.save }

    it 'Title should be present' do
      first_post.title = nil
      expect(first_post).to_not be_valid
    end

    it 'comments_counter should be a positive integer' do
      first_post.comments_counter = 'test'
      expect(first_post).to_not be_valid
    end
  end

  context 'Test get_5_recent_comments method' do
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

    it 'get_5_recent_comments should return 5 records' do
      expect(first_post.five_recent_comments.size).to eq(5)
    end
  end
end
