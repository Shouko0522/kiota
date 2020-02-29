class MeetingsController < ApplicationController

  def index
    @applied_reservations = current_user.applied_reservations
    @confirmed_reservations = current_user.confirmed_reservations
    ConfirmReservationJob.set(wait: 20.seconds).perform_later(@applied_reservations.sample.id) unless @applied_reservations.nil?

  end
end
