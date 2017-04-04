class Patient

  attr_accessor :doctors, :appointments
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
    @doctors << appointment.doctor
    appointment.doctor.patients << self
  end

end
