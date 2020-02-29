class MeetingsController < ApplicationController

  def index
    @applied_reservations = current_user.applied_reservations
    @confirmed_reservations = current_user.confirmed_reservations
  end
end
