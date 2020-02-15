class Property < ApplicationRecord
  belongs_to :user
end


def my_match (a_user)
  Property.where(shouko)
end
