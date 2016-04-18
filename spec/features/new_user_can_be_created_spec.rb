require 'rails_helper'

RSpec.feature "New user can be created" do
  scenario "new user lands on their user page" do
    visit gifs_path
    click_on "Sign Up"
    fill_in "user_username", with: "falafel"
    fill_in "user_password", with: "calamari"
    click_on "Create Account"

    expect(page).to have_content "falafel"
  end
end