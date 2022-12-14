require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET user/users' do
    # tests correct response status
    it 'returns http success' do
      get '/user/users'
      expect(response).to have_http_status(:success)
    end

    # Tests a correct template was rendered.
    it 'return the users template' do
      get '/user/users'
      expect(response).to render_template('users')
    end

    # Test if response body includes correct placeholder text.
    it 'List of users goes here' do
      get '/user/users'
      expect(response.body).to include 'List of users goes here'
    end
  end

  describe 'GET user/user' do
    # tests correct response status
    it 'returns http success' do
      get '/user/users'
      expect(response).to have_http_status(:success)
    end

    # Tests a correct template was rendered.
    it 'returns the user template' do
      get '/user/user'
      expect(response).to render_template('user')
    end

    # Test if response body includes correct placeholder text.
    it 'returns Show a single user with id' do
      get '/user/user'
      expect(response.body).to include 'Show a single user with id'
    end
  end

  describe 'GET user/:id/posts' do
    # tests correct response status
    it 'returns http success' do
      get '/user/10/posts'
      expect(response).to have_http_status(:success)
    end

    # Tests a correct template was rendered.
    it 'returns the user_posts template' do
      get '/user/10/posts'
      expect(response).to render_template('user_posts')
    end

    # Test if response body includes correct placeholder text.
    it 'returns Show a single user with id' do
      get '/user/10/posts'
      expect(response.body).to include 'Show all posts of a single user'
    end
  end

  describe 'GET user/:user_id/posts/:id' do
    # tests correct response status
    it 'returns http success' do
      get '/user/1/posts/10'
      expect(response).to have_http_status(:success)
    end

    # Tests a correct template was rendered.
    it 'returns the user_posts template' do
      get '/user/1/posts/5'
      expect(response).to render_template('user_post')
    end

    # Test if response body includes correct placeholder text.
    it 'returns Show a single user with id' do
      get '/user/2/posts/2'
      expect(response.body).to include 'Show a single post by a user here'
    end
  end
end
