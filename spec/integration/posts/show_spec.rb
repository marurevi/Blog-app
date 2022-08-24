require 'rails_helper'

RSpec.describe 'Post show', type: :feature do
    
  before(:example) do
    Rails.application.load_seed
    visit user_post_path(User.first.id, User.first.posts[4].id)
  end

  it "should show the post's title" do
    expect(page).to have_content('Title 5')
  end

  it "should show the post's author" do
    expect(page).to have_content('Tom')
  end

  it "should show how many comments the post has" do
    expect(page).to have_content('Comments: 4')
  end

  it "should show how many likes the post has" do
    expect(page).to have_content('Likes: 0')
  end

  it "should show the post's text" do
    expect(page).to have_content(User.first.posts[4].text)
  end

  it "should show the name of the user who wrote the comment" do
    author_id = User.first.posts[4].comments[0].author_id
    expect(page).to have_content(User.find_by(id: author_id).name)
  end

  it "should show the text of the comment" do
    expect(page).to have_content(User.first.posts[4].comments[0].text)
  end
end