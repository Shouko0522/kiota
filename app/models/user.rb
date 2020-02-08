class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Landlord
  has_many :owned_properties, class_name: 'Property'

  # Renter
  has_many :property_viewings
  has_many :properties, through: :property_viewings
end
