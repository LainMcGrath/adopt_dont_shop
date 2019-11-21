require 'rails_helper'

RSpec.describe "pet index page", type: :feature do
  before(:each) do
    @shelter_1 = Shelter.create(name:    "Denver Dog Shelter",
                                address: "123 Main St",
                                city:    "Denver",
                                state:   "CO",
                                zip:     "80206")
    @pet = Pet.create(name: "Sparky",
      approximate_age: 7,
      sex: "male",
      shelter: @shelter_1)
    visit "/pets"
  end

  it "can see all pets" do
    expect(page).to have_content(@pet.name)
  end
end
