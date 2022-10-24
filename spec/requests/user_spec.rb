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
      it 'returns http success' do
        get '/user/users'
        #expect(response).to render_template(:users)
        expect(response).to render_template('users')
        # expect(response).to have_http_status(:success)
      end

      # Test if response body includes correct placeholder text.
      it 'returns http success' do
        get '/user/users'
        expect(response.body).to include 'List of users goes here'
      end

    end
  end
  

# RSpec.describe 'Users', type: :request do
#   describe 'GET /users' do
#     it 'returns http success' do
#       get '/user/users'
#       expect(response).to have_http_status(:success)
#     end
#   end
# end
