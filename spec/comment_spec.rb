require 'rails_helper'

RSpec.describe Comment do
  let(:user) { User.new(name: 'name', photo: 'photo', bio: 'bio') }
  let(:post) { Post.new(author: user, title: 'title', text: 'post text') }
  let(:comment) { Comment.new(author: user, post:, text: 'comment text') }

  context 'When testing the Comment class' do
    before do
      user.save
      post.save
      comment.save
    end

    it 'should contain an author' do
      expect(comment).to have_attributes(author: user)
    end

    it 'should contain a post' do
      expect(comment).to have_attributes(post:)
    end

    it 'should update comments counter' do
      expect(post.comments_counter).to eq(1)
    end
  end
end
