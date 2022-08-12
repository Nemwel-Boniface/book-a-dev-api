class Api::V1::DevelopersController < ApplicationController
  def index
    @developers = Developer.all 
    
    if @developers
      render json: {status: "SUCCESS", message: "Retrieved all the developers correctly!", data: @developers}, status: :ok
    else
      render json: @developers.errors, status: :bad_request
    end
  end

  def create
    developer = Developer.new(developers_params)

    if developer.save
      render json: {status: "SUCCESS", message: "Developer created succesfully!", data: developer}, status: :created
    else
      render json: developer.errors, status: :unprocessable_entity
    end
  end

  def show
    developer = Developer.find(params[:id])

    if developer
      render json: {data: developer}, status: :ok 
    else
      render json: {message: "Developer cannot be found!"}, status: :bad_request
    end
  end

  private

  def developers_params
    params.require(:developer).permit(:name, :icon, :location, :email, :tech_stack, :experience, :bio, :hourly_rate)
  end
end