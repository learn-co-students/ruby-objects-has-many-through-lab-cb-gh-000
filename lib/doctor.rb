class Doctor 
  
  attr_accessor :name, :appointments, :patients 
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def initialize(name)
    self.name = name 
    self.class.all << self 
    self.appointments = []
    self.patients = []
  end 
  
  def new_appointment(patient, date)
    new = Appointment.new(patient, self, date)
    new.doctor = self 
    self.appointments << new 
    self.patients << patient 
    new 
  end 
  
end 

