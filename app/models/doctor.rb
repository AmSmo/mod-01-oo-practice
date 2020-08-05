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
        # this returns doctor objects, was unclear if you wanted names
    end

    def initialize(name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end

    def greet
        puts "Hi Everybody! I'm Dr. #{self.name}."
        
        # puts "Hi Dr. Nick!!!" if self.name == "Nick Riviera"
        # puts "Hehehehe" if self.name == "Julius Michael Hibbert"
        # puts "The first tenet of good medicine is, never make the patient any worse.... Wesley" if self.name =="Beverly Crusher"

        # just practicing self vs @ and case.. don't mind me 
        case self.name
        when "Nick Riviera" then puts "Hi Dr. Nick!!!"
        when "Julius Michael Hibbert" then puts "Hehehehe"
        when "Beverly Crusher" then "The first tenet of good medicine is, never make the patient any worse.... Wesley"
        else puts "Well... I am a doctor"
        end
    end

end
