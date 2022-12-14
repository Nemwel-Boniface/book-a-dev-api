class Api::V1::DevelopersController < ApplicationController
  # before_action :authenticate_user!
  def index
    @developers = Developer.all

    if @developers
      render json: { status: 'SUCCESS', message: 'Retrieved all the developers correctly!', data: @developers },
             status: :ok
    else
      render json: @developers.errors, status: :bad_request
    end
  end

  def create
    developer = Developer.new(developers_params)

    if developer.save
      render json: { status: 'SUCCESS', message: 'Developer created succesfully!', data: developer }, status: :created
    else
      render json: developer.errors, status: :unprocessable_entity
    end
  end

  def show
    developer = Developer.find(params[:id])

    if developer
      render json: { data: developer }, status: :ok
    else
      render json: { message: 'Developer cannot be found!' }, status: :bad_request
    end
  end

  def destroy
    developer = Developer.find(params[:id])

    if developer.destroy!
      render json: { message: 'Developer was deleted successfully!' }, status: :ok
    else
      render json: { message: 'Developer does not exist!' }, status: :bad_request
    end
  end

  private

  def developers_params
    params.require(:developer).permit(:name, :icon, :location, :tech_stack, :experience, :bio, :hourly_rate, :linkedin,
                                      :github, :twitter, :phone, :title, :available, :user_id)
  end
end

# enhancements had to add
