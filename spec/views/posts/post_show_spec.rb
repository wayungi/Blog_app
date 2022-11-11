require 'rails_helper'
RSpec.describe 'test users index page', type: :feature do
  # add users
  let!(:first_user) do
    User.create(name: 'Micheal', photo: 'https://picsum.photos/200', bio: 'Instructor and GADS.')
  end
  let!(:second_user) do
    User.create(name: 'Franko', photo: 'https://picsum.photos/200', bio: 'Instructor and GADS.')
  end
  # create posts for the first user
  let!(:first_post) do
    Post.create(author: first_user, title: 'Google cloud is cool', text: 'Come learn devOps')
  end
  let!(:first_comment) do
    Comment.create(post: first_post, author: second_user, text: 'Is this true Micheal?')
  end
  before(:each) do
    visit user_post_path(first_user, first_post)
  end
  # I can see the post's title.
  scenario 'I can see the post\'s title.' do
    expect(page).to have_content('Google cloud is cool')
  end
  # I can see who wrote the post.
  scenario 'I can see who wrote the post.' do
    expect(page).to have_content('Micheal')
  end
  #  I can see how many comments it has.
  scenario 'I can see how many comments it has.' do
    expect(page).to have_content(/Comments: [\d+]/i)
  end
  #  I can see how many likes it has.
  scenario 'I can see how many likes it has.' do
    expect(page).to have_content(/Likes: [\d+]/i)
  end
  #  I can see the post body.
  scenario 'I can see the post body.' do
    expect(page).to have_content('Come learn devOps')
  end
  #  I can see the username of each commentor.
  scenario 'I can see the username of each commentor.' do
    expect(page).to have_content('Franko')
  end
  #    I can see the comment each commentor left.
  scenario 'I can see the comment each commentor left.' do
    expect(page).to have_content('Is this true Micheal?')
  end
end
