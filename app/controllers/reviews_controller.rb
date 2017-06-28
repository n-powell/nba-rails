class ReviewsController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @review = @team.reviews.new
  end

  def create
    @team = Team.find(params[:team_id])
    @review = @team.reviews.new(review_params)
    if @review.save
      redirect_to team_path(@review.team)
    else
      render :new
    end
  end


  private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end
