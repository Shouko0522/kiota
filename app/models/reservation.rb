class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :property
  belongs_to :property_viewing
  validates :start_date, presence: true
  validates :end_date, presence: true
end
