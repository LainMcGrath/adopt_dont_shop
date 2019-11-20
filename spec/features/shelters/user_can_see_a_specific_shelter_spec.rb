require 'rails_helper'

RSpec.describe "shelter ID page", type: :feature do
  before(:each) do
    @shelter_1 = Shelter.create( name: "Denver Dog Shelter")
    visit "/shelters/#{@shelter_1.id}"
  end

  it "can view shelter demographics" do
    expect(page).to have_content("Denver Dog Shelter")
    # expect(page).to have_content(@shelter_1.address)
    # expect(page).to have_content(@shelter_1.city)
    # expect(page).to have_content(@shelter_1.state)
    # expect(page).to have_content(@shelter_1.zip)
  end
end
