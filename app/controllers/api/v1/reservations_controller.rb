class Api::V1::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all

    if @reservations
      render json: { status: 'SUCCESS', message: 'Retrieved all the reservations correctly!', data: @reservations },
             status: :ok
    else
      render json: @reservations.errors, status: :bad_request
    end
  end

  private

  def reservations_params
    params.require(:reservation).permit(:start_date, :end_date, :location, :developer_id, :user_id)
  end
end