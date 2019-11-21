class PetsController < ApplicationController

  def index
    if params[:shelter_id]
      @shelter = Shelter.find(params[:shelter_id])
      @pets = @shelter.pets
    else
      @pets = Pet.all
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  # def adoptable?
  #   @pet = Pet.find(params[:id])
  #   require "pry"; binding.pry
  # end
end
