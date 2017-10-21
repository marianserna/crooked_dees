class User < ApplicationRecord

  has_many :appointments
  # has_many :dentists, through: :appointments
end
