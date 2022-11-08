require 'rails_helper'

RSpec.describe 'test users index page', type: :feature do

    let!(:second_user) do
        user = User.create(name: 'Micheal', photo: 'https://picsum.photos/200', bio: 'Instructor and GADS.')
    end

    let!(:post) do
        first_post = Post.create(author: first_user, title: 'Google cloud is cool', text: 'Come learn devOps')
    end

    # I can see the user's profile picture.




end

=begin

    I can see the user's profile picture.
    I can see the user's username.
    I can see the number of posts the user has written.
    I can see the user's bio.
    I can see the user's first 3 posts.
    I can see a button that lets me view all of a user's posts.
    When I click a user's post, it redirects me to that post's show page.
    When I click to see all posts, it redirects me to the user's post's index page.
=end