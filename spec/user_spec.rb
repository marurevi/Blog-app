require 'rails_helper'
require_relative '../app/models/post'

RSpec.describe User do
  let(:user) { User.new(name: 'John Doe', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Canada.')}
    
  before { user.save }

  context 'When testing the User class' do
    it 'should contain a name' do
      expect(user.name).to eq('John Doe')
    end
    
    it 'should contain a photo' do
      expect(user.photo).to eq('https://unsplash.com/photos/F_-0BxGuVvo')
    end
    
    it 'should contain a bio' do
      expect(user.bio).to eq('Teacher from Canada.')
    end
  end

  context 'When testing the User methods' do
    
    posts = []
    
    before do
      posts << (1..10).each { Post.create(author: user, title: 'title', text: 'text') }
    end
        
    it 'should return an array of posts with a maximum of 3' do
      expect(user.recent_posts.count).to eq(3)
    end

    it 'should return the lenght of posts in posts_counter' do
      expect(user.posts_counter).to eq(10)
    end
  end

  context 'When testing Validations' do
    it 'should validate that name isn\'t empty' do
      user1 = User.new(name: '', photo: 'photography source', bio: 'biography')
      espect(user1.name.valid?).not_to be(true)
    end

    it 'should validate that PostsCounter must be an integer greater than or equal to zero.' do
      user2 = User.new(name: 'John Doe', photo: 'photography source', bio: 'biography', posts_counter: 'a')
      expect(user2.posts_counter.valid?).not_to be(true)
    end
  
    it 'should validate presence of bio' do
      user3 = User.new(name: 'John Doe', photo: 'photography source', bio: '')
      expect(user3.bio.valid?).not_to be(true)
    end
  end
end