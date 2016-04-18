require 'rails_helper'

RSpec.feature "Admin submits a new giphy" do
  scenario "they see the page for the individual giphy" do
    giphy_search = "all the things"

    visit gifs_path
    click_on "Add a Gif"
    
    fill_in "gif_search_terms", with: giphy_search
    fill_in "gif[search_terms]", with: giphy_search
    click_on "Add Gif"

    expect(page).to have_content giphy_search
    # expect page to have content of gif image
  end
end