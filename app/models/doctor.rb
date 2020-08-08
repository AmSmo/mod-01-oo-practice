class Doctor
    
    attr_accessor :name, :years
    attr_reader :specialty

    @@all = []

    def self.all
        @@all
    end

    def self.find_by_specialty(specialty)
        self.all.select do |doc| 

            doc.specialty.downcase == specialty.downcase  
        end
    end

    def initialize(name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def greet
        puts "Hi Everybody! I'm Dr. #{self.name}."
        case self.name
            when "Nick Riviera" then puts "Hi Dr. Nick!!!"
            when "Julius Michael Hibbert" then puts "Hehehehe"
            when "Beverly Crusher" then "The first tenet of good medicine is, never make the patient any worse.... Wesley"
            else puts "Well... I am a doctor"
        end
    end

    def appointments
        Appointment.all.select {|app| app.doctor == self}
    end

    def patients
        (appointments.map {|app| app.patient}).uniq
    end

    def create_appointment(patient)
        Appointment.new(self,patient)
    end
    

    
    
end




########### GRAVEYARD ############## For reference only
# def other_doc(patient)

#     if patient.doctor.nil?
#         return "That's not anyone's patient"
#     else
#         return "You're Dr. #{patient.doctor.name}'s patient.'"
#     end
# end
# def my_patient?(patient)
#     self.patients.include?(patient)
# end

# def discharge_patient(patient)
#     if my_patient?(patient)
#         patient.doctor = nil
#         return "You are no longer in the care of Dr. #{self.name}"
#     else
#         other_doc(patient)
#     end
# end

# def doctor?(doctor)
#     doctor.class == Doctor
# end

# realized that this doesn't work as a function since if they aren't a
# doctor class, this function wouldn't exist.  Instead of a lot of &&
# statements is there a better way of going about checking? or 
# is this a waste of time (sorry if it is your time)


# def transfer_patient(patient, new_doctor)
#     if patient.class == Patient && new_doctor.class == Doctor
#         if my_patient?(patient) 
#             patient.change_doctors(new_doctor)
#         else
#             other_doc(patient)
#         end
#     else
#         return "One of you is not who you say you are"
#     end
# end
