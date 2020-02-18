class Property < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
end


def my_match (a_user)
  Property.where(shouko)
end
