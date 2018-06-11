class Patient 
  
  attr_accessor :name, :appointments, :doctors
  
  def initialize(name )
    self.name = name 
    self.appointments = []
    self.doctors = []
  end 
  
  def new_appointment( doc, date)
    new = Appointment.new(self, doc, date)
    self.appointments << new 
    self.doctors << doc 
    new 
  end 
  
end 
