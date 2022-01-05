class Room < ActiveRecord::Base

    has_many :reservations
    has_many :guests, through: :reservations

    #Instance methods go here
end