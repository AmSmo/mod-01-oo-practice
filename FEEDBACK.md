# Part One - Intro to OO
Classes look good! You started to work in run.rb and maybe removed some code but you can always leave that in so we can look at it too - the way you create instances and interact with them. 
The deliverables for these practices will always be the baseline - if you want to level it up, go for it! 

# Part Two - More to OO
- Fauci hero fr
- Your greet makes me chuckle a lot. It's wonderful. Only improvement - indent the lines in your case (the whens and else)
- In `doctor.rb` it's standard to have the attr's and class variables at the top followed by the initialize, then all of your methods. The reason is for easy readability of the core structure of the class/blueprint. 
- For `find_by_speciality`: Great use of downcase to handle the case sensitivity, and I did want a list of the doctor instances so you're good! 
- In `patient.rb`, I didn't even realize it was a pun till rn. For the return, the order does matter. Try putting the return first and seeing what happens. One thing with ruby is that you don't have to write the return; it will automatically return the last statement. When you get to JS you'll be challenged again about implicit v explicit returns but jump that hurdle when you get there :) 

# Part Four - Associations!
Your Many-to-Many is set up beautifully - good job! No additional notes
From the commented out `change_doctors` in patient.rb, I love that you checked the class of the argument passed in. I would change `@doctor` to `self.doctor`. Both will technically work but using the methods is a preferred pattern. 
For `doctor?` method... what are you trying to achieve? Anytime you have an instance saved, you can check its `.class` built in method from ruby. 
Great job building `discharge_patient` and using helper methods a la `my_patient?`. Nitpicky - ` return "You're Dr. #{patient.doctor.name}'s patient.'"` should say the patient is `Dr. #{patient.doctor.name}'s patient.'"`
LOL `return "One of you is not who you say you are"`
