require 'rails_helper'

RSpec.describe 'test post index page', type: :feature do

    # create users
    let!(:first_user) do
        user = User.create(name: 'Vitorio', photo: 'https://picsum.photos/200', bio: 'Instructor and GADS.')
    end
    let!(:second_user) do
        user = User.create(name: 'Anne', photo: 'https://picsum.photos/200', bio: 'Instructor and GADS.')
    end

    # create posts for the first user
    let!(:first_post) do
        first_post = Post.create(author: first_user, title: 'Google cloud is cool', text: 'Come learn devOps')
    end

    let!(:first_comment) do
        first_comment = Comment.create(post: first_post, author: second_user, text: 'Is this true Vitorio?')
    end

    let!(:like) do
        Like.create(author: second_user, post:first_post)
    end

    before(:each) do
        visit user_posts_path(first_user)
    end

    #    I can see the user's profile picture.
    scenario 'I can see the user\'s profile picture.' do
        expect(page).to  have_xpath("//img[@src='#{first_user.photo}']")
    end

    #     I can see the user's username.
    scenario 'Show the user name of other users' do
        expect(page).to  have_content("#{first_user.name}");
    end

    # I can see the number of posts the user has written.
    scenario 'Show number of posts for each user' do
        expect(page).to have_content(/Number of posts: [\d+]/i)
    end

    #   I can see a post's title.
    scenario 'I can see a post\'s title' do
        expect(page).to  have_content("Google cloud is cool");
    end

    # I can see some of the post's body.
    scenario ' I can see some of the post\'s body.' do
        expect(page).to  have_content("Come learn devOps");
    end

    #  I can see the first comments on a post.
    scenario ' I can see the first comments on a post' do
        expect(page).to  have_content("Is this true Vitorio?");
    end

    # I can see how many comments a post has.
    scenario 'I can see how many comments a post has.' do
        expect(page).to have_content(/Comments: [\d+]/i)
    end

    # I can see how many likes a post has.
    scenario ' I can see how many likes a post has.' do
        expect(page).to have_content(/Likes: [\d+]/i)
    end

    # I can see a section for pagination if there are more posts than fit on the view.
    scenario 'I can see a section for pagination if there are more 
    posts than fit on the view.' do
        expect(page).to have_button('Pagination')
    end

    # When I click on a post, it redirects me to that post's show page.
    # scenario ' When I click on a post, it redirects me to that post\'s show page.' do
    #     click_link (user_post_path(first_user, first_post)
    #     expect(page).to have_current_path(user_post_path(first_user, first_post))
    # end

end
