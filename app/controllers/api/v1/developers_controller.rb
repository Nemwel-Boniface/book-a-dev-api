class Api::V1::DevelopersController < ApplicationController
  def index
    @developer = Developer.all 
    render json: @developer
  end
end