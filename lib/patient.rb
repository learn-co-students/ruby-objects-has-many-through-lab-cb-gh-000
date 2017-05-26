class Patient

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  # NOTE: Calling this method with the same appointment will add it again to the appointments.
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self  # Update the appointment's patient.
  end

  def doctors
    @appointments.collect { |appointment| appointment.doctor }
  end

end
