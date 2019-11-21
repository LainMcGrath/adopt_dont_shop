require 'rails_helper'

RSpec.describe 'create new shelter', type: :feature do

  xit "can create a new shelter" do
    fill_in "Shelter name:" with: "New shelter!"
  end
end
