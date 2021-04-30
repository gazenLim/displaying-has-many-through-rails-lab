class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments


    def number_of_appointment
        self.appointments.count
       end
end
