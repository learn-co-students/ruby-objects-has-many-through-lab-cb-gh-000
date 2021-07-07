class Appointment
	attr_accessor :day, :patient, :doctor
	def initialize(day, patient)
		@day = day
		@patient = patient
		@doctor = nil
		patient.add_appointment(self)
	end


end
