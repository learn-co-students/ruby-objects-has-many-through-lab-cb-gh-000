class Doctor
  attr_reader :appointments, :name

  def initialize(name)
    @appointments = []
    @name = name
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    @appointments.collect { |appointment| appointment.patient }
  end
end
