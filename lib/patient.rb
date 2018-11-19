class Patient

  attr_accessor :name, :appointments, :doctors

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
end
