class MeetingsController < ApplicationController
  def index
    @reservations = Reservation.all
  end
end
