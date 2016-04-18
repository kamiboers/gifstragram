require 'rails_helper'

RSpec.feature "user can logout of account" do
  scenario "registered user can logout session" do
    user = User.create(username: "kami", password: "password")
    
    visit login_path

    fill_in "session_username", with: user.username
    fill_in "session_password", with: "password"
    click_on "Log In"

    expect(page).to have_content "kami"

    click_on "Logout"

    refute page.has_content?("kami")
  end
end