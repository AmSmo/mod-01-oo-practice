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

    # will add a time and reference that later
    # hesitant to do things like that without knowing
    # how far we are going with deliverables
    # but HELLO! hope you're having a wonderful day


end