class Patient 
  attr_accessor :name, :doctor, :date
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patience == self 
    end 
  end 
  
  def doctors 
    appointments.collect do |appointment| 
      appointment.doctor 
    end 
  end 
  
end 