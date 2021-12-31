class Hotel < ActiveRecord::Base
    #Macros go here

    has_many :reservations

    #Instance methods go here
end