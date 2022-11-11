require 'rails_helper'

RSpec.describe 'test users index page', type: :feature do
  # create users
  let!(:first_user) do
    User.create(name: 'Micheal', photo: 'https://picsum.photos/200', bio: 'Instructor and GADS.')
  end
  let!(:second_user) do
    User.create(name: 'Micheal', photo: 'https://picsum.photos/200', bio: 'Instructor and GADS.')
  end

  # create posts for the first user
  let!(:first_post) do
    Post.create(author: first_user, title: 'Google cloud is cool', text: 'Come learn devOps')
  end
  let!(:second_post) do
    Post.create(author: first_user, title: 'Make it count', text: 'Ensure you learn everything')
  end
  let!(:third_post) do
    Post.create(author: first_user, title: 'Stress is easing', text: 'It will go away intime')
  end

  before(:each) do
    visit user_path(first_user)
  end

  # I can see the user's profile picture.
  scenario 'I can see the user\'s profile picture.' do
    expect(page).to have_xpath("//img[@src='#{first_user.photo}']")
  end

  # I can see the user's username.
  scenario 'Show the user name of other users' do
    expect(page).to have_content(first_user.name.to_s)
  end

  # I can see the number of posts the user has written.
  scenario 'Show number of posts for each user' do
    expect(page).to have_content(/Number of posts: [\d+]/i)
  end

  #  I can see the user's bio.
  scenario 'I can see the user\'s bio' do
    expect(page).to have_content(first_user.bio.to_s)
  end

  #  I can see the user's first 3 posts.
  scenario 'I can see the user\'s first 3 posts' do
    expect(page).to have_content(3)
  end

  #  I can see a button that lets me view all of a user's posts.
  scenario 'I can see a button that lets me view all of a user\'s posts' do
    expect(page).to have_content('See all posts')
  end
end
