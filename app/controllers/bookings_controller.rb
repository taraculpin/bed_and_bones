class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :update, :destroy]

  def new
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @pet = Pet.find(params[:pet_id])
    @booking.pet = @pet
    @booking.user = current_user
    if @booking.save
      redirect_to pet_booking_path(@pet, @booking)
    else
      render :new
    end
  end

  def show
  end

  # def edit
  # end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to my_bookings_path
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  # def find_pet
  # end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :pet_id)
  end
end
