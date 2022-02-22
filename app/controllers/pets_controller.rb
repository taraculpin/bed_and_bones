class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    if @pet.save?
      redirect_to pet_path(@pet)
    else
      redirect_to :new
  end

  def show
    find_pet
  end

  def edit
    find_pet
  end

  def update
    find_pet
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def delete
    find_pet
    @pet.destroy
    redirect_to pets_path
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :age, :address, :price, :species)
  end
end
