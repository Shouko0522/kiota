class ConfirmReservationJob < ApplicationJob
  queue_as :default

  def perform(property_viewings_id)
    property_viewing = PropertyViewing.find(property_viewings_id)
    puts "Confirm resevation of #{property_viewings_id}"
    # TODO: perform a time consuming task like Clearbit's Enrinchment API.
    property_viewing.reservation_status = "confirmed"
    property_viewing.save
    puts "Done! "
  end
end
