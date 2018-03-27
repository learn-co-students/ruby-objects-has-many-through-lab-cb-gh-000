class Patient
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end
  def add_appointment(app)
    @appointments << app
    app.patient = self
  end
  def doctors
    self.appointments.collect do |x|
      x.doctor
    end
  end
end
