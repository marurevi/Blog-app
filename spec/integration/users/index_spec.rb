require 'rails_helper'

RSpec.describe 'User index', type: :feature do
  before(:each) do
    Rails.application.load_seed
    visit root_path
  end

  it 'should show the username of all other users' do
    expect(page).to have_content('Tom')
    expect(page).to have_content('Lilly')
    expect(page).to have_content('Jerry')
    expect(page).to have_content('John')
    expect(page).to have_content('Jane')
  end

  it 'should show the profile picture of each user' do
    expect(page).to have_css("img[src*='Tom']")
    expect(page).to have_css("img[src*='Lilly']")
    expect(page).to have_css("img[src*='Jerry']")
    expect(page).to have_css("img[src*='John']")
    expect(page).to have_css("img[src*='Jane']")
  end

  it 'should show the number of posts each user has written' do
    expect(page).to have_content('Number of posts: 5')
    expect(page).to have_content('Number of posts: 5')
    expect(page).to have_content('Number of posts: 0')
    expect(page).to have_content('Number of posts: 0')
    expect(page).to have_content('Number of posts: 0')
  end

  it 'should redirect to users page when I click on the user name' do
    click_on "#{User.first.name}"
    expect(page).to have_current_path(user_path(User.first.id))
  end
end
