class User < ApplicationRecord

  has_secure_password

  has_many :appointments
  # has_many :dentists, through: :appointments

  validates :name, :email, :phone, presence: true
  validates :email, uniqueness: true
  validates :phone, format: /\A\d{10}\z/
end
