class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :place
  validates :hour_quantity, numericality: {only_integer: true}
end
