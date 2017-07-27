class Patient
  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    @appointments << appointment if !@appointments.include?(appointment)
    appointment.patient == self
    @doctors << appointment.doctor
    appointment.doctor.patients << self if !appointment.doctor.patients.include?(self)
  end
end
