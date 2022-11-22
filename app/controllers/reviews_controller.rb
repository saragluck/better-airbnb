class ReviewsController < ApplicationController
  def create
    @review = Review.new
    @review.reservation_id = params[:review][:reservation_id]
    @review.rating = params[:review][:rating]
    @review.comment = params[:review][:comment]
    @review.save
    redirect_to "/reviews"
  end

  def destroy
  end

  def edit
  end

  def index
  end

  def new
    @review = Review.new
    render template: "reviews/new"
  end

  def update
  end
end
