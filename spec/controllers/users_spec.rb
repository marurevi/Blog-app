require 'rails_helper'

RSpec.describe 'Users', type: :request do
  # let(:user) { User.create(name: 'John Doe', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Canada.') }

  fdescribe 'GET /index' do
    before do
      get '/users/index'
    end

    it 'should render a successful response' do
      expect(response).to have_http_status(:ok)
    end

    it 'should assert which template or partials being rendered'
    # expect(response).to render_template(:index)

    it 'should assert the content of the response body'
    # expect(response.body).to include("<h1>Hello World</h1>")
  end
  describe 'GET /show' do
    pending "add some examples (or delete) #{__FILE__}"
  end
end
