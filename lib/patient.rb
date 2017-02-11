class Patient

  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    @appointments[-1].patient = self
  end

  def doctors
    doctor_list = @appointments.map {|appointment| appointment.doctor}
    doctor_list.uniq
  end

end
