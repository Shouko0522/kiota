class Property < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :property_viewings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end


def my_match (a_user)
  Property.where(Property.pets = User.pets)
end
