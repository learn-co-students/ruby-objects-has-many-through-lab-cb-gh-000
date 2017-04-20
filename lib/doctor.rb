class Doctor
    attr_accessor :name, :appointments

    def initialize(name)
        @name = name
        @appointments = []
        @patients = []
    end

    def add_appointment(appointment)
        @appointments << appointment
        appointment.doctor = self
    end

    def patients
        @appointments.map {|appointment| appointment.patient}
    end
end
