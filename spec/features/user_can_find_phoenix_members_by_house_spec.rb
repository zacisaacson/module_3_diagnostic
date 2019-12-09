require 'rails_helper'

feature "user can find phoenix members by house" do

  scenario "user submits valid house" do

    visit '/'

    select "Gryffindor", from: :house

    click_on "Search For Members"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("21 Results")

    expect(page).to have_css(".member", count: 21)

    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".house")
      expect(page).to have_css(".patronus")
    end
  end
end
