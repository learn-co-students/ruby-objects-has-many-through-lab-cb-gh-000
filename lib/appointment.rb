class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @doctor = doctor
    doctor.appointments << self
    @date = date
  end


end
