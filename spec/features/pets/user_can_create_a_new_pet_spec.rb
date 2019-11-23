require 'rails_helper'

RSpec.describe "User can create a new pet", type: :feature do

  it "can create a new pet" do
    shelter_1 = Shelter.create( name: "Denver Dog Shelter",
                                address: "123 Main St",
                                city:    "Denver",
                                state:   "CO",
                                zip:     "80206")

    visit "/shelters/#{shelter_1.id}/pets/new"

    fill_in :name, with: "Spuds"
    fill_in :description, with: "A cute cuddy pup!"
    fill_in :approximate_age, with: "3"
  end

end
