class Appointment

  attr_accessor :date, :doctor, :patient
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    # Uses the current 'Appointment' object as an argument for the
    # method #add_appointment from the 'Doctor' class.
    doctor.add_appointment(self)
  end

end
