require_relative './app/models/doctor.rb'
require_relative './app/models/patient.rb'
require 'pry'

alan = Patient.new("Al", 27)

martha = Patient.new("Martha",33)

prince = Patient.new("Formerly Known as", 45)


(name, specialty, years = 1)

nick = Doctor.new("Nick Riviera", "fraud", 3)

hibbert = Doctor.new("Julius Michael Hibbert", "Family Medicine", 8)

crusher = Doctor.new("Beverly Crusher", "Family Medicine", 300)

fauci = Doctor.new("Anthony Fauci", "hero", 33)

binding.pry
