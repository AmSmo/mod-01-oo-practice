require_relative './app/models/doctor'
require_relative './app/models/patient'
require_relative './app/models/appointment'
require 'pry'

alan = Patient.new("Al", 27)

martha = Patient.new("Martha",33)



nick = Doctor.new("Nick Riviera", "fraud", 3)

hibbert = Doctor.new("Julius Michael Hibbert", "Family Medicine", 8)

crusher = Doctor.new("Beverly Crusher", "Family Medicine", 300)

fauci = Doctor.new("Anthony Fauci", "hero", 33)

prince = Patient.new("Formerly Known as", 45)

bumble_bee_guy = Patient.new("Bumble Bee Guy", 44)


ten_am = Appointment.new(fauci,prince)
eleven_am = Appointment.new(bumble_bee_guy, nick)
ten_am = Appointment.new(fauci,prince)
binding.pry
