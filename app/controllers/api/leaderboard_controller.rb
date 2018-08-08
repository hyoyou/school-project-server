class Api::LeaderboardController < ApplicationController

  def index
    @leaderboards = Leaderboard.all.sort_by { |h| h[:no_of_checkins] }.reverse
    render json: @leaderboards
  end

  def create
  end

  def show

  end

  private

  def leaderboard_params
      params.require(:leaderboard).permit(:rank, :no_of_checkins, :location_id, :user_id)
  end


end
