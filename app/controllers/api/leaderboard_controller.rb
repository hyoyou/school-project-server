class Api::LeaderboardController < ApplicationController

  def index
    @leaderboards = Leaderboard.all
    render json: @leaderboards
  end

  private

  def leaderboard_params
      params.require(:leaderboard).permit(:rank, :no_of_checkins, :location_id, :user_id)
  end


end
