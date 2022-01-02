class Guest < ActiveRecord::Base
    has_many :reservations
    has_many :rooms, through: :reservations

    # READ
    def reservation_booked? (date_start)
        self.reservations.any? do |reservation|
            reservation.date_start == date_start
        end
    end
    
    # DELETE
    def cancel_reservation(reservation)
        self.reservations.each do |each_reservation|
            if each_reservation.id == each_reservation.id
            each_reservation.destroy
            end
        end
    end
end