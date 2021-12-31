class Reservation < ActiveRecord::Base
    #Macros go here
        
    belongs_to :hotels
    belongs_to :guests
    belongs_to :rooms
        
    #Instance methods go here
end