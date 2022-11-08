require 'rails_helper'


RSpec.describe 'index page tests', type: :feature do
    #     I can see the username of all other users.
    scenario 'Show usernames on the index page' do
        visit root_path
        expect(page).to have_content('users')
    end
end




=begin

    I can see the profile picture for each user.
    I can see the number of posts each user has written.
    When I click on a user, I am redirected to that user's show page.
=end
