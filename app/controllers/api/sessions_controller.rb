require 'auth'

class Api::SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:user][:email])
  
    if user && user.valid_password?(params[:password])
      token = Auth.create_token(user)
      returned_user = Auth.decode_token(token)
      
      render json: {email: returned_user["email"], username: returned_user["username"], token: token}, status: 200
    else
      render json: {errors: "Email or Password is incorrect"}, status: 500
    end

  end

  def find
    user = Auth.decode_token(params[:token])
    
    if user
      render json: { user: user }
    else
      render json: { errors: { message: "Unable to find user" } }, status: 401
    end
  end

end