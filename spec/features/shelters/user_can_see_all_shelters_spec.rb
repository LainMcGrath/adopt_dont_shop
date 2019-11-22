require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  before(:each) do
    @shelter_1 = Shelter.create( name: "Denver Dog Shelter")
    @shelter_2 = Shelter.create( name: "Denver Cat Shelter")
    visit "/shelters"
  end

  it "can see all shelters" do
    expect(page).to have_content(@shelter_1.name)
    expect(page).to have_content(@shelter_2.name)
  end

  it "can click on a shelter and go to the page" do
    click_link("Denver Dog Shelter")
    expect(page).to have_current_path("/shelters/#{@shelter_1.id}")
  end

  xit "can click on an edit link and go to the page" do
    click_link("Edit", match: :first)
    expect(page).to have_current_path("/shelters/#{@shelter_1.id}/edit")
  end

  xit "can click on a delete button and refresh the page" do
    click_button("delete", match: :first)
    expect(page).to have_current_path("/shelters")
  end
end
