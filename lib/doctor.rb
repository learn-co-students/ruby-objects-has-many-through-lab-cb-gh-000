class Doctor
   @@all =[]
   attr_accessor :name, :appointments
   def initialize(name)
     @name = name
     @appointments = []
     @@all << self
   end

    def self.all
     @@all
   end

    def new_appointment(patient,date)
     appointment = Appointment.new(patient, self, date)
      @appointments << appointment
      appointment
   end

    def patients
     array = []
     @appointments.each { |each| array << each.patient}
     array
   end
 end
