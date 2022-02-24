class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "pets.name ILIKE :query OR species.name ILIKE :query"
      @pets = Pet.joins(:species).where(sql_query, query: "%#{params[:query]}%")
    else
      @pets = Pet.all
    end

    @markers = @pets.geocoded.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        info_window: render_to_string(partial: "info_window", locals: { pet: pet }),
        image_url: helpers.asset_url("pawprint.png")
      }
    end
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user_id = current_user.id
    if @pet.save!
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  def my_pets
    @pets = Pet.where(user_id: current_user.id)
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :age, :address, :price, :species_id, :photo)
  end

end
