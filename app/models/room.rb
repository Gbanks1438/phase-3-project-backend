class Room < ActiveRecord::Base
    #Macros go here

    has_many :reservations
    has_many :guests, through: :reservations

    #Instance methods go here
end