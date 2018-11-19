class Doctor

  attr_accessor :name, :appointments, :patients

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @patients = []
    @appointments = []
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
end
