class Appointment 
  
  @@all = []
  
  attr_accessor :patient, :doctor 
  
  def self.all 
    @@all 
  end 
  
  def initialize(patient, doc, date)
    self.patient = patient
    self.doctor = doctor
    self.class.all << self 
  end 
  
end