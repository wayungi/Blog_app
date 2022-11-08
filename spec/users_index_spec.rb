require 'rails_helper'

RSpec.describe 'test users index page', type: :feature do
    let!(:first_user) do
        user = User.create(name: 'Micheal', photo: 'https://picsum.photos/200', bio: 'Instructor and GADS.')
    end

    let!(:second_user) do
        user = User.create(name: 'Micheal', photo: 'https://picsum.photos/200', bio: 'Instructor and GADS.')
    end

    let!(:post) do
        first_post = Post.create(author: first_user, title: 'Google cloud is cool', text: 'Come learn devOps')
    end

    before(:each) do
        # visit user_path(user)
        visit root_path
      end

    # I can see the username of all other users.
    scenario 'Show the user name of other users' do
        expect(page).to  have_content("#{first_user.name}");
        expect(page).to  have_content("#{second_user.name}");
    end

    # I can see the profile picture for each user.
    scenario 'Show the profile picture of other users' do
        expect(page).to  have_xpath("//img[@src='#{first_user.photo}']")
        expect(page).to  have_xpath("//img[@src='#{second_user.photo}']")
    end

    # I can see the number of posts each user has written.
    scenario 'Show number of posts for each user' do
        expect(page).to have_content(/Number of posts: [\d+]/i)
    end

    # When I click on a user, I am redirected to that user's show page.
    scenario "When I click a user, it redirects me to that user's show page." do
        Capybara.page.first('div.user_group').click
        expect(page).to have_no_current_path("/users/#{first_user.id}")
    end

end


