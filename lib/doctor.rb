class Doctor
  # Class initializes with a name and an empty collection of appointments.
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end


  # Method adds a new 'Appointment' object to the instance variable
  # '@appointments' array and assigns the current 'Doctor' object to that appointment.
  def add_appointment(appointment)
    @appointments.push(appointment)
    appointment.doctor = self
  end


  # Method iterates through the '@appointments' array to associate the 'Patient'
  # objects from each 'Appointment' object to the correct 'Doctor' object.
  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end
