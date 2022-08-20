require 'rails_helper'

RSpec.describe Like do
  let(:author) { User.new(name: 'name', photo: 'photo', bio: 'bio') }
  let(:posts) { Post.new(author:, title: 'title', text: 'post text') }
  let(:like) { Like.new(author:, posts:) }

  context 'When testing the Like class' do
    it 'should contain an author' do
      expect(like).to have_attributes(author:)
    end

    it 'should contain a post' do
      expect(like).to have_attributes(posts:)
    end

    it 'should update likes counter' do
      like.save
      expect(posts.likes_counter).to eq(1)
    end
  end
end
