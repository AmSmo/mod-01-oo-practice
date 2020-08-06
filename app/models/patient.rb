class Patient
    attr_accessor :name, :age, :doctor
    

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, age, doctor = nil)
        @name = name
        @age = age
        @impatience = 0   #I hope the pun is intended
        @doctor = doctor
        @@all << self    
    end

    # unsure if you wanted us to change the initialization so you can now
    # create a patient automatically with a doctor.  It's still an optional
    # argument though

    def inquire_appt_ready
        increase_impatience
        return "The doctor will be ready soon. Please be patient"  
    end
    
    def change_doctors(new_doc)
        if new_doc.class == Doctor
            @doctor = new_doc
        else
            return "That's not a doctor, that's three children stacked up in a labcoat"
        end
    end


    private

    def increase_impatience
        @impatience +=1
    end
end
