require 'rails_helper'

RSpec.describe Post do
  let(:user) { User.create(name: 'John Doe', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Canada.') }
  let(:post) { Post.create(author: user, title: 'title', text: 'text') }

  before do
    user.save
    post.save
  end

  context 'When testing the Posts class' do
    it 'should contain an author' do
      expect(post.author).to eq(user)
    end

    it 'should contain a title' do
      expect(post.title).to eq('title')
    end

    it 'should contain a text' do
      expect(post.text).to eq('text')
    end
  end

  context 'When testing the Posts methods' do
    
    it 'should update post counter' do
      expect(user.posts_counter).to eq(1)
    end

    it 'should return the lenght of comments in comments_counter' do
      comment1 = Comment.create(author: user, post: post, text: 'text1').save
      expect(post.recent_comments.count).to eq(1)
    end
  end

  context 'When testing Validations' do
    it 'should validate that title isn\'t empty' do
      post.title = nil
      expect(post).not_to be_valid
    end

    it 'should validate that title doesn\'t exceed 250 characters' do
      post.title = 'a' * 260
      expect(post).not_to be_valid
    end

    it 'should validate that CommentsCounter must be an integer greater than or equal to zero.' do
      post.comments_counter = -3
      expect(post).not_to be_valid
    end

    it 'should validate that LikesCounter must be an integer greater than or equal to zero.' do
      post.likes_counter = -2
      expect(post).not_to be_valid
    end
  end
end
