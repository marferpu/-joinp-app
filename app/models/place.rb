class Place < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price_per_hour, presence: true
  validates :capicity, presence: true
  validates :category, presence: true
  belongs_to :user
  has_many :reservations
  has_many_attached :photos
end
