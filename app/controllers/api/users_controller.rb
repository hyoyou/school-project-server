require 'auth'

class Api::UsersController < ApplicationController

  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all.sort { |a,b| b.no_of_checkins <=> a.no_of_checkins }
    render json: @users
  end

  def show
    render json: @user
  end

  def signup
    user = User.new(user_params)
    if user.save
      token = Auth.create_token(user)
      returned_user = Auth.decode_token(token)

      render json: returned_user, status: 200

    else
      render json: {message: user.errors}, status: 400
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: {message: @user.errors}, status: 400
    end
  end

  def destroy
    if @user.destroy
      render status: 204
    else
      render json: {message: "Unable to process your request"}, status: 400
    end
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:password, :username, :email)
  end

end

#Carrier Wave Documentation
#https://github.com/carrierwaveuploader/carrierwave
