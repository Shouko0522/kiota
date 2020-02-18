class Property < ApplicationRecord
  belongs_to :user
  has_many :property_viewings
end


def my_match (a_user)
  Property.where(Property.pets = User.pets)
end
