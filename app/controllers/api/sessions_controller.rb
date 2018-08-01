require 'auth'

class Api::SessionsController < ApplicationController

  def login
    user = User.find_by(email: params[:user][:email])
    binding.pry
    if user && user.authenticate(params[:user][:password])
      token = Auth.generate_token(user)
      returnedUser = Auth.decode_token(token)
      render json: returned_user, status: 200
    else
      render json: {errors: "Email or Password is incorrect"}, status: 500
    end
  end

end