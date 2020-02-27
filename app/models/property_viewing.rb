class PropertyViewing < ApplicationRecord
  belongs_to :user
  belongs_to :property
  belongs_to :reservation
end
