class Appointment

    attr_accessor :doctor, :patient

    @@all = []

    def self.all
        @@all
    end

    def initialize(doctor,patient)
        @doctor = doctor
        @patient = patient
        @@all << self
    end



end