

class Doctor
  attr_accessor :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    @appointments << appointment
    appointment
  end

  def patients
    result = []
    @appointments.each{|appointment| result << appointment.patient }
    result
  end

  def self.all
    @@all
  end

end
