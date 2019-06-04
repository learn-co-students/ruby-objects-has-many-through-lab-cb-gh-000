class Patient
  @@all = []
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @@all << self
    @appointments =[]
  end

  def self.all
    @@all
  end

  def new_appointment(doctor,date)
    appointment = Appointment.new(self,doctor,date)
    @appointments << appointment
    appointment
  end

  def doctors
    arr = []
    @appointments.each{|i| arr << i.doctor}
    arr
  end

  def patients
    arr = []
    @appointments.each{|appointment| arr << appointment.patient }
    arr
  end

end
