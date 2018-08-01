class Api::LocationsController < ApplicationController
    before_action :set_location, only: [:show, :update, :destroy]

    def index
        render json: Location.all
    end

    def new
    end

    def create
    end

    def show
        render json: @location
    end

    private
    def set_location
        @location = Location.find_by(id: params[:id])
    end

    def location_params
        params.require(:location).permit(:region, :city, :name, :address)
    end
end
