class Patient
    attr_accessor :name, :age

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0   #I hope the pun is intended
        @@all << self    
    end

    def inquire_appt_ready

        increase_impatience
        return "The doctor will be ready soon. Please be patient"  

        # do you care about order/ puts vs return? was wondering if the return of what 
        # what impatience changes to would be a negative feature later.
        # I really need to practice caution with implicit returns since I started with python
        # any advice would be awesome!!!! Is it alright to keep the practice of using 'return'
        
    end


    private

    def increase_impatience
        @impatience +=1
    end
end
