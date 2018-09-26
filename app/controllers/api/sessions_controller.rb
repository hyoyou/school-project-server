require 'auth'

class Api::SessionsController < ApplicationController

  def create

    user = User.find_by(email: params[:user][:email])
    
    if user && user.valid_password?(params[:user][:password])
      token = Auth.create_token(user)
      returned_user = Auth.decode_token(token)
      render json: {user: { id: user.id, username: user.username, email: user.email, no_of_checkins: user.no_of_checkins, user_locations_attributes: user.user_locations }, token: token}, status: 200
    else
      render json: {errors: "Email or Password is incorrect"}, status: 400
    end

  end

  def find
    user = Auth.decode_token(params[:token])
    
    if user
      render json: { user: { id: user.id, username: user.username, email: user.email, no_of_checkins: user.no_of_checkins, user_locations_attributes: user.user_locations } }
    else
      render json: { errors: { message: "Unable to find user" } }, status: 401
    end
  end

end