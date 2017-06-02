class Doctor
  attr_accessor :appointments, :name
  def initialize(name)
    @appointments = []
    @name = name
  end
  def add_appointment(appointment)
    appointment.doctor = self
    @appointments << appointment
  end
  def patients
    @appointments.collect{|appointment| appointment.patient}
  end
end
