class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render template: "reviews/index"
  end

  def create
    @review = Review.new
    @review.user_id = params[:review][:user_id]
    @review.reservation_id = params[:review][:reservation_id]
    @review.rating = params[:review][:rating]
    @review.comment = params[:review][:comment]
    @review.save
    redirect_to "/reviews"
  end

  def destroy
  end

  def update
  end

  def show
    @review = Review.find_by(id: params[:id])
    render template: "reviews/show"
  end

  def new
    @review = Review.new
    render template: "reviews/new"
  end

  def update
  end

  def delete
  end
end
