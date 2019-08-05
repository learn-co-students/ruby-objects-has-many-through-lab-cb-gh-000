class Patient
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  def appointments()
    Appointment.all.select do |appo|
      appo.patient == self
    end
  end
  def doctors()
    appointments.map do |appo|
      appo.doctor
    end
  end
end
