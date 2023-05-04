# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

#Création des specialties
5.times do
  Specialty.create(name: Faker::Job.field)
end

#Création des villes
10.times do
  City.create(name: Faker::Address.city)
end

#Création des doctors
15.times do
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: City.all.sample, specialties: Specialty.all.sample(rand(1..3)))
end

#Création des patients
30.times do
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

#Création des appointments
50.times do
  Appointment.create(date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), doctor: Doctor.all.sample, patient: Patient.all.sample)
end