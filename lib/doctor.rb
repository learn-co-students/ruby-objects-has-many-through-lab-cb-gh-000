class Doctor

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  # NOTE: Calling this method with the same appointment will add it again to the appointments.
  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self  # Update the appointment's doctor.
  end

  def patients
    @appointments.collect { |appointment| appointment.patient }
  end

end
