class Specialty < ApplicationRecord
  has_many :medicines
  has_many :doctors, through: :medicines
end
