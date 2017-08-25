class Patient
  # Class initializes with a name and an empty collection of appointments.
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end


  # Method adds a new 'Appointment' object to the instance variable
  # '@appointments' array and assigns the current 'Patient' object to that appointment.
  def add_appointment(appointment)
    @appointments.push(appointment)
    appointment.patient = self
  end


  # Method iterates through the '@appointments' array to associate the 'Doctor'
  # objects from each 'Appointment' object to the correct 'Patient' object.
  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
