class ReviewsController < ApplicationController

  def new
    @pets = Pet.find(params[:pets_id])
    @review = Pet.new
  end

  def create
    @review = Review.new(review_params)
    @pets = Pet.find(params[:pets_id])
    @review.pets = @pets

    if @review.save
      redirect_to pets_path(@pets)
    else
      render :new
    end
end

def review_params
    params.require(:review)
  end

end
