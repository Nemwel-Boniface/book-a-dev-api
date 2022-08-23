class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(users_params)

    if user.save
      render json: { status: 'SUCCESS', message: 'User registered succesfully!', data: user }, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def login
    email = params[:email]
    password = params[:password]
    user = User.find_by(email: email)
    if user && user.password == password
      render json: { data: user }, status: :ok
    else
      render json: { message: 'User not found!' }, status: :bad_request
    end
  end

  private

  def users_params
    params.require(:user).permit(:name, :email, :username, :password)
  end
end
