class Doctor

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    @appointments[-1].doctor = self
  end

  def patients
    patients = @appointments.map {|appointment| appointment.patient}
    patients.uniq
  end

end
