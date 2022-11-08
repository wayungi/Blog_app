require 'rails_helper'


RSpec.describe 'index page tests', type: :feature do
    let!(:user) do
        User.create(name: 'Gloria', photo:'https://picsum.photos/200', bio:'Swasa top loader')
    end

    let!(:post) do
        Post.create(author_id: user.id, title: 'UCU', text: 'I am done with UCU life')
    end

    before(:each) do
        # visit user_path(user)
        visit root_path
    end

    #     I can see the username of all other users.
    scenario 'Show usernames on the index page' do
       
        expect(page).to have_content(user.name)
    end
end




=begin

    I can see the profile picture for each user.
    I can see the number of posts each user has written.
    When I click on a user, I am redirected to that user's show page.
=end
