require 'rails_helper'

RSpec.describe "shelter ID page", type: :feature do
  before(:each) do
    @shelter_1 = Shelter.create( name: "Denver Dog Shelter")
    visit "/shelters/#{@shelter_1.id}"
  end

  it "can view shelter demographics" do
    expect(page).to have_content(@shelter_1.name)
  end

  it "can click on edit and go to the page" do
    click_link("Edit")
    expect(page).to have_current_path("/shelters/#{@shelter_1.id}/edit")
  end

  it "can click on delete and delete the shelter" do
    click_link("Delete")
    expect(page).to have_current_path("/shelters")
  end
end
