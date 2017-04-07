class Doctor
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments.dup.freeze
  end

  def add_appointment(appointment)
    @appointments << appointment if appointment.is_a?(Appointment) && !appointments.include?(appointment)
  end

  def patients
    appointments.collect { |appointment| appointment.patient }
  end

end
