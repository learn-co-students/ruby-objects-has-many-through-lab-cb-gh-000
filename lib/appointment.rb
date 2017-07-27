class Appointment
  attr_accessor :date, :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) << self if !doctor.appointments.include?(self)
  end

  def patient
    @patient
  end

  def patient=(patient)
    @patient = patient
    patient.appointments << self if !patient.appointments.include?(self)
    patient.doctors << @doctor if !patient.doctors.include?(@doctor)
  end
end
