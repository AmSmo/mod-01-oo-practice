class Patient
    attr_accessor :name, :age
    

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0   
        @@all << self    
    end


    def inquire_appt_ready
        increase_impatience
        return "The doctor will be ready soon. Please be patient"  
    end
   
    def appointments
        Appointment.all.select {|app| app.patient == self}
    end

    def doctors
        appointments.map {|app| app.doctor}.uniq
    end

    def create_appointment(doctor)
        Appointment.new(doctor,self)
    end

    private
    
    def increase_impatience
        @impatience +=1
    end
end

########## GRAVEYARD ############## For reference only

# def change_doctors(new_doc)
#     if new_doc.class == Doctor
#         @doctor = new_doc
#     else
#         return "That's not a doctor, that's three children stacked up in a labcoat"
#     end
# end