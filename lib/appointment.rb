class Appointment
  attr_accessor :date, :doctor, :patient
  def initialize(date, doctor)
    self.doctor = doctor
    self.date   = date
    doctor.add_appointment(self)
  end
end
