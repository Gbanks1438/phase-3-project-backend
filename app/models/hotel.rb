class Hotel < ActiveRecord::Base
    has_many :reservations

    # CREATE
    def make_reservation(guest, room, date_start, date_end)
        Reservation.create(
            hotel_id: id,
            guest_id: guest.id,
            room_id: room,
            date_start: date_start,
            date_end: date_end
        )
    end
end