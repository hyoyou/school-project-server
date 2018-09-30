class Api::UserLocationsController < ApplicationController
  #  helper_method :product

  def index
    @user_locations = UserLocation.all
    render json: @user_locations
  end

  def show
  end

  private
  # def product
  #   Product.date_match
  # end

  def line_params
    params.require(:user_locations).permit(:id, :rank, :no_of_checkins, :user_id, :location_id)
  end
end
