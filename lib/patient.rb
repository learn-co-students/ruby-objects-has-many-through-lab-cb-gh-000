class Patient
  attr_accessor :name, :appointments
  def initialize(name)
    @appointments = []
    @name = name
  end
  def add_appointment(appointment)
    appointment.patient = self
    @appointments << appointment
  end
  def doctors
    @appointments.collect{|appointment| appointment.doctor}
  end
end
