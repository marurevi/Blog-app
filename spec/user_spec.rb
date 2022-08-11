require 'rails_helper'

RSpec.describe User do
    let(:user) { User.new(name: 'John Doe', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')}
    before { user.save }

    context 'When testing the User class' do
      it 'should contain a name'
      it 'should contain a photo'
      it 'should contain a bio'
      it 'should return an array of posts with a maximum of 3'
      it 'should return the lenght of posts in posts_counter'
    end

    context 'When testing Validations' do
      it 'should validate that name isn\'t empty'
      it 'should validate that PostsCounter must be an integer greater than or equal to zero.'
      it 'should validate presence of bio'
    end
end