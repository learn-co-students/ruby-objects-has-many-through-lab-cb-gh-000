class Appointment
  attr_accessor :patient
  attr_reader :doctor

  def initialize date, doctor
    @patient = nil
    @doctor = doctor
    @doctor.add_appointment self
  end

end
