class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient
    

    def date_to_long_formate
        self.appointment_datetime.to_formatted_s(:long) 
    end
   

    def date_time_redable_formate
        self.date_to_long_formate.split.insert(3, "at").join(" ")
    end
end
# "January 11, 2016 at 20:20"

# datetime.to_formatted_s(:long) 