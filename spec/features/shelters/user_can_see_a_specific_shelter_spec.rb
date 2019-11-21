require 'rails_helper'

RSpec.describe "shelter ID page", type: :feature do
  before(:each) do
    @shelter_1 = Shelter.create( name: "Denver Dog Shelter")
    visit "/shelters/#{@shelter_1.id}"
  end

  it "can view shelter demographics" do
    expect(page).to have_content("Shelter name:")
    # expect(page).to have_content("123 Main St")
    # expect(page).to have_content("Denver")
    # expect(page).to have_content("CO")
    # expect(page).to have_content("80206")
  end
end
