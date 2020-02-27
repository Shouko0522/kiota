class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @property = Property.find(params[:property_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @property = Property.find(params[:property_id])
    user = current_user
    @reservation.property= property
    @reservation.user = user
    @reservation.save
    # redirect_to reservation_dashboard_path(@reservation)
  end
end

