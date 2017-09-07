class Patient

  attr_accessor :appointments
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments =[]
  end

  def add_appointment(appointment)
    @appointments.push(appointment)
    appointment.patient = self
  end

  def doctors
    doctors =[]
    @appointments.each do |element|
      doctors.push(element.doctor)
    end
    doctors.uniq.flatten
  end

end
