class Doctor

  attr_accessor :appointments
  attr_reader :name


  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments.push(appointment)
    appointment.doctor = self
  end

  def patients
    patients =[]
    @appointments.each do |element|
      patients.push(element.patient)
    end
    patients.uniq.flatten
  end


end
