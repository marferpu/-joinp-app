class Place < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many_attached :photos
end
