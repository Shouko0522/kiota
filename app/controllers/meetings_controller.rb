class MeetingsController < ApplicationController
  def index
    @reservations = Reservation.where(user == current_user)
  end
end
