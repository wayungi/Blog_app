require 'rails_helper'


# If response status was correct.
# If a correct template was rendered.
# If the response body includes correct placeholder text.



RSpec.describe 'Users', type: :request do
    describe 'GET /users' do
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



    describe 'GET /user' do
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
  end
  


