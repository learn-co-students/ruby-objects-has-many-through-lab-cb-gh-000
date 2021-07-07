class Doctor
  attr_accessor :name,:appointments
  def initialize(name)
    @name = name
    @appointments = []
  end
  def add_appointment(app)
    @appointments << app
  end
  def patients
    self.appointments.collect do |x|
      x.patient
    end
  end
end
