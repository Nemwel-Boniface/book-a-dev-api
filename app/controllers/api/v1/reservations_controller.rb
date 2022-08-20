class Api::V1::ReservationsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @reservations = @user.reservations.includes(:developer)

    if @reservations
      render json: { status: 'SUCCESS', message: 'Retrieved all the reservations correctly!', data: @reservations },
             status: :ok
    else
      render json: @reservations.errors, status: :bad_request
    end
  end

  def create
    reservation = Reservation.new(reservations_params)

    if reservation.save
      render json: { status: 'SUCCESS', message: 'reservation created succesfully!', data: reservation },
             status: :created
    else
      render json: reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])

    if reservation.destroy!
      render json: { message: 'reservation was deleted successfully!' }, status: :ok
    else
      render json: { message: 'reservation does not exist!' }, status: :bad_request
    end
  end

  private

  def reservations_params
    params.require(:reservation).permit(:start_date, :end_date, :location, :developer_id, :user_id)
  end
end
