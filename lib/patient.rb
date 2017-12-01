class Patient
  attr_accessor :name, :appointments
  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    self.appointments << appointment
  end

  def doctors
    self.appointments.map { |e| e.doctor }
  end
end
