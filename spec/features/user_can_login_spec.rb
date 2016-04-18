require 'rails_helper'

RSpec.feature "user can login to account" do
  scenario "registered user can login to account" do
    user = User.create(username: "kami", password: "password")
    
    visit login_path

    fill_in "session_username", with: user.username
    fill_in "session_password", with: "password"
    click_on "Log In"

    expect(page).to have_content "kami"
  end
end