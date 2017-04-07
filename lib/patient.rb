class Patient
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
    appointment.patient = self
  end

  def doctors
    appointments.map { |appointment| appointment.doctor }
  end

end
