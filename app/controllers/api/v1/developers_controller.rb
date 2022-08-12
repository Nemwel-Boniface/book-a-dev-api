class Api::V1::DevelopersController < ApplicationController
  def index
    @developers = Developer.all 
    
    if @developers
      render json: {status: "SUCCESS", message: "Retrieved all the developers correctly!", data: @developers}, status: :ok
    else
      render json: @developers.errors, status: :bad_request
    end
  end
end