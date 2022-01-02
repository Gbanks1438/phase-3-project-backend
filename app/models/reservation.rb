class Reservation < ActiveRecord::Base
    belongs_to :hotels
    belongs_to :guests
    belongs_to :rooms
        
    # READ
    def show_reservations
        return "#{guest.first_name} #{guest.last_name} will be staying at the lodge from #{reservation.date_start} until #{reservation.date_end}. They have booked to stay in room #{reservation.room_id} and are expecting a party of #{guest.party_size} others to visit and enjoy #{guest.reason_for_stay}."
    end
end