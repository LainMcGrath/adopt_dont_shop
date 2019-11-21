require 'rails_helper'

RSpec.describe 'create new shelter', type: :feature do

  it "can create a new shelter" do
    visit "/shelters/new"
    fill_in 'shelter[name]', with: "New shelter!"
    fill_in 'shelter[address]', with: "123 Main St"
    fill_in 'shelter[city]', with: "Denver"
    fill_in 'shelter[state]', with: "CO"
    fill_in 'shelter[zip]', with: "80206"
    click("submit")
    expect(page).to have_current_path("/shelters/")

  end
end
