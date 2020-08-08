# mod-01-oo-practice
FlatIron Mod 1 OO practice


Practice Deliverables
Patient
Patient#initialize: should initialize with a name (string) and age (integer)
Patient#name: should return the Patient’s name, should be able to change its name after creation
Patient#age: should return the Patient’s age, should be able to change its age after creation
Doctor
Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
Doctor#name: should return the Doctor’s name, should be able to change its name after creation
Doctor#speciality: should return the Doctor’s speciality, should NOT be able to change its speciality after creation
Doctor#years: should return the Doctor’s years, should be able to change its years after creation





PART TWO
git pull
git log    # you should see an additional commit (or 2!) 
Practice Deliverables
Patient
Patients should be initialized with an instance variable, impatience, set to 0
Patient#increase_impatience: should be a private method that increases impatience by 1 
Patient#inquire_appt_ready: should print that the doctor will be ready soon and increase patient impatience by 1
Patient.all: should return a list of all patient instances
Doctor
Doctor.all: should return a list of all doctor instances
Doctor#greet: should print a greeting that would make any patient feel welcomed!
Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty 





:arrow_right: Practice Project Part III One-to-Many Associations :arrow_left:
Make sure you pull down the code first to get any recent updates from me or your coaches.
Associations:
A Patient should belong to a Doctor
A Doctor can have many Patients
Patient
Patient#doctor should return the Doctor instance for this patient
Patient#change_doctors should take a doctor instance and update the patient’s doctor
Doctor
Doctor#patients should return an array of all the Patients for that doctor
Doctor#dischange_patient should set a patient’s doctor to nil, only if the patient belongs to the current doctor
Doctor#transfer_patient should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor.
(edited)




A Patient has many Doctors through Appointment
X
A Doctor has many Patients through Appointment
X


An Appointment belongs to a Doctor and a Patient
Appointment
X
Appointment#initialize… intentionally vague. What will it need to be initialized?
X maybe add time later?
Appointment.all should return a list of all appointment instances 
X
Patient
Note: you can comment out your #doctor and #changes_doctors methods
X
Patient#appointments should return a list of Appointment instances associated with this patient 
X
Patient#doctors should return a list of Doctor instances associated with this patient through Appointments. Try to ensure this list does not include duplicates.
X

Patient#create_appointment should create a new appointment between the current patient and a specified doctor
X
Doctor
Note: you can comment out your #patients, #dischange_patient, and #transfer_patient methods
X
Doctor#appointments should return a list of Appointment instances associated with this doctor 
X
Doctor#patients should return a list of Patient instances associated with this patient through Appointments. Try to ensure this list does not include duplicates.
X




