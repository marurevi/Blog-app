require 'rails_helper'

RSpec.describe 'User show', type: :feature do
    
  before(:example) do
    Rails.application.load_seed
    visit user_path(User.second.id)
  end
  

  it "should show the user's profile picture" do
    expect(page).to have_css("img[src*='Lilly']")
  end

  it "should show the user's username" do
    expect(page).to have_content('Lilly')
  end

  it "should show the number of posts the user has written" do
    expect(page).to have_content('Number of posts: 5')
  end

  it "should show the user's bio" do
    expect(page).to have_content('Bio')
  end

  it "should show the user's recent 3 posts" do
    expect(page.all('div.post').length).to eq(3)
  end

  it "should show a button that lets me view all of a user's posts" do
    expect(page).to have_content('See All')
  end
  it "should redirects to the post's index page when I click on a user's post" do
     
    click_on 'Lilly'
    expect(page).to have_current_path user_path(User.second.id)
  end
  it "should redirects to the post's show page when I click on the button 'See all posts'" do
    click_on 'See All'
    expect(page).to have_current_path user_posts_path(User.second.id)
  end
end
