require 'rails_helper'

RSpec.describe Comment do
  let(:comment) { Comment.create(author: 'John Doe', post: 'post', text: 'comment text') }

  fcontext 'When testing the Comment class' do
    it 'should contain an author' 
    it 'should contain a post'
  end

  fcontext 'When testing the Comment method' do
    it 'should increase coments counter'
  end
end