class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum :role, { Explorador: 0, Propietario: 1 }, default: :explorer, suffix: true
  before_create :user_default

  has_many :places
  has_many :reservations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def user_default
    self.role = :Explorador
  end
end
