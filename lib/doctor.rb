class Doctor

  attr_accessor :name, :appointments, :patients

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def new_appointment(patient, date)
    temp = Appointment.new(patient, self, date)
    @appointments << temp
    @patients << patient
    temp
  end

  def appointments
    @appointments
  end

  def patients
    @patients
  end

  def self.all
    @@all
  end

end