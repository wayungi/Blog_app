require 'rails_helper'

RSpec.describe Like, type: :model do

    context 'Test  update_post_likes_counter method' do 
        first_user =  User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
        first_post = Post.create(author: first_user, title: '1st', text: 'This is my first post') 
        # Add 5 likes for first_post
        Like.create(post: first_post, author: first_user) 
        Like.create(post: first_post, author: first_user) 
        Like.create(post: first_post, author: first_user) 
        Like.create(post: first_post, author: first_user) 
        
        it 'update_post_likes_counter should return 4 records' do 
            expect(first_post.likes_counter).to eq(4) 
        end 
        
    end 
end