class Doctor
  @@all =[]
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient,date)
    appointment = Appointment.new(patient, self, date)
     @appointments << appointment
     appointment
  end

  def patients
    arr = []
    @appointments.each { |i| arr << i.patient}
    arr
  end
end