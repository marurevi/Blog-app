require 'rails_helper'
require_relative '../app/models/post'

RSpec.describe Post do
  let(:user) { User.new(name: 'John Doe', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Canada.')}
  let(:posts) { Post.create(author: user, title: 'title', text: 'text') }
    
  before { posts.save }

  context 'When testing the Posts class' do
    it 'should contain an author'    
    it 'should contain a title' 
    it 'should contain a text'
  end

  context 'When testing the Posts methods' do        
    it 'should return an array of comments with a maximum of 5 items'
    it 'should return the lenght of comments in comments_counter'
  end

  context 'When testing Validations' do
    it 'should validate that title isn\'t empty' 
    it 'should validate that title doesn\'t exceed 250 characters'
    it 'should validate that CommentsCounter must be an integer greater than or equal to zero.'
    it 'should validate that LikesCounter must be an integer greater than or equal to zero.'
  end
end