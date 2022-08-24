require 'rails_helper'

RSpec.describe 'Post index', type: :feature do
  before(:example) do
    Rails.application.load_seed
    visit user_posts_path(User.first.id)
  end

  it "should have a user's profile picture" do
    expect(page).to have_css("img[src*='Tom']")
  end

  it "should have a user's name" do
    expect(page).to have_content('Tom')
  end

  it 'should show the number of posts the user has written' do
    expect(page).to have_content('Number of posts: 5')
  end

  it "should have a post's title" do
    expect(page).to have_content('Title 5')
  end

  it "should show some of the post's body" do
    expect(page).to have_content(User.first.posts[4].text[0..150])
  end

  it 'should show the first comment on a post' do
    expect(page).to have_content(User.first.posts[4].comments[0].text)
  end

  it 'should show how many comments a post has' do
    expect(page).to have_content('Comments: 4')
  end

  it 'should show how many likes a post has' do
    expect(page).to have_content('Likes: 0')
  end

  it 'shoud should have a button for pagination' do
    expect(page).to have_content('Pagination')
  end

  it 'should have a link to the show post page to see the full post' do
    click_on 'Title 5'
    expect(page).to have_current_path user_post_path(user_id: User.first.id, id: User.first.posts[4].id)
  end
end
