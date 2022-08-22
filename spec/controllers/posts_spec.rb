require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:user) { User.create(name: 'John Doe', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Canada.') }
  let(:post) { Post.create(author: user, title: 'title', text: 'text') }

  describe 'GET /index' do
    before(:each) { get "/users/#{user.id}/posts" }

    it 'should render a successful response' do
      expect(response).to have_http_status(:ok)
    end

    it 'should assert which template or partials being rendered' do
      expect(response).to render_template(:index)
    end

    it 'should assert the content of the response body' do
      expect(response.body).to include('<div class="photo">')
    end
  end

  describe 'GET /show' do
    before do
      get "/users/#{user.id}/posts/#{post.id}"
    end

    it 'should render a successful response' do
      expect(response).to have_http_status(:ok)
    end

    it 'should assert which template or partials being rendered' do
      expect(response).to render_template(:show)
    end

    it 'should assert the content of the response body' do
      expect(response.body).to include('<div class="title">')
    end
  end
end
