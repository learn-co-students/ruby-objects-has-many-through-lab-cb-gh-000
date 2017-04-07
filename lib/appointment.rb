class Appointment
  attr_accessor :patient
  attr_reader :title, :doctor

  def initialize(title, doctor)
    @title = title
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
