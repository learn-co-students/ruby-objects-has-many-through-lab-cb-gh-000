class Patient
  attr_accessor :appointments, :doctors

  def initialize(name)
    @appointments = []
    @name = name
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    @appointments.collect { |appointment| appointment.doctor }
  end
end
