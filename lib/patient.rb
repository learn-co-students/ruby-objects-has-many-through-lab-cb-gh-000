class Patient

  attr_accessor :name, :doctors, :appointments

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []

  end


  def new_appointment(doctor, date)
    temp = Appointment.new(self, doctor, date)
    @appointments << temp
    @doctors << doctor
    temp
  end

  def appointments
    @appointments
  end




end