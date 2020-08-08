class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|appt|
      appt.doctor == self}
      
end

  def patients
   self.appointments.collect do |appointment|
      appointment.patient
    end.uniq
  end

end



