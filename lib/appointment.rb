class Appointment
  attr_accessor :patient
  attr_accessor :doctor
  attr_accessor :date
  @@all = []
  
  def initialize(patient, date, doctor)
    @patient = patient
    @doctor= doctor
    @date = date
    @@all << self
  end
  
  def self.all
    @@all
  end
end