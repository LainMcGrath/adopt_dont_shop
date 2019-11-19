require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can see all shelters" do
    shelter_1 = Shelter.create( name: "Denver Dog Shelter")
    shelter_2 = Shelter.create( name: "Denver Cat Shelter")

visit "/shelter"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
  end
end
