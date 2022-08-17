require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user) { User.create(name: 'John Doe', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Canada.') }

  describe 'GET /index' do
    before do
      get users_path
    end

    it 'should render a successful response' do
      expect(response).to have_http_status(:ok)
    end

    it 'should assert which template or partials being rendered' do
      expect(response).to render_template(:index)
    end

    it 'should assert the content of the response body' do
      expect(response.body).to include("<p>Number of posts: <%= 0 %></p>")
    end
  end

  describe 'GET /show' do
    before do
      get "/users/#{user.id}"
    end

    it 'should render a successful response' do
      expect(response).to have_http_status(:ok)
    end

    it 'should assert which template or partials being rendered' do
      expect(response).to render_template(:show)
    end

    it 'should assert the content of the response body' do
      expect(response.body).to include('<h3>Names of the required author is:</h3>')
    end
  end
end
