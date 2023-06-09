class Doctor < ApplicationRecord
  belongs_to :city
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :medicines
  has_many :specialties, through: :medicines
end
