class Patient
    
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|each_appointment| each_appointment.patient == self}
    end

    def doctors
        appointments.map {|each_appointment| each_appointment.doctor}
    end

end
