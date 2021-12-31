class Guest < ActiveRecord::Base
    #Macros go here

    has_many :reservations
    has_many :rooms, through: :reservations

    #Instance methods go here
end