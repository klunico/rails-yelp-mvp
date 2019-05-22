class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.save
    redirect_to review_path(@review)
  end

  def show
  end
end
