puts "🌱 Seeding spices..."

hotel1 = Hotel.create(
    name: "Fox Hill Lodge",
    address: "Big Bowman Pond, NY",
    fireplaces: 4,
    rooms: 5,
    max_guests: 12,
    has_modern_amenities: true,
    is_lakeside: true
)

reservation1 = Reservation.create(
    hotel_id: 1,
    guest_id: 1,
    room_id: 1,
    date_start: "01/01/2022",
    date_end: "01/14/2022"
)

reservation2 = Reservation.create(
    hotel_id: 1,
    guest_id: 2,
    room_id: 2,
    date_start: "03/17/2022",
    date_end: "03/20/2022"
)

reservation3 = Reservation.create(
    hotel_id: 1,
    guest_id: 3,
    room_id: 3,
    date_start: "07/01/2022",
    date_end: "07/06/2022"
)

reservation4 = Reservation.create(
    hotel_id: 1,
    guest_id: 4,
    room_id: 4,
    date_start: "10/28/2022",
    date_end: "11/01/2022"
)

reservation5 = Reservation.create(
    hotel_id: 1,
    guest_id: 5,
    room_id: 5,
    date_start: "11/21/2022",
    date_end: "11/27/2022"
)

room1 = Room.create(
    floor_number: 0,
    num_of_beds: 3,
    bed_size: "Full Mattresses",
    has_ensuite: false
)

room2 = Room.create(
    floor_number: 1,
    num_of_beds: 1,
    bed_size: "King Mattress",
    has_ensuite: true
)

room3 = Room.create(
    floor_number: 2,
    num_of_beds: 1,
    bed_size: "Queen Mattress",
    has_ensuite: false
)

room4 = Room.create(
    floor_number: 2,
    num_of_beds: 1,
    bed_size: "Queen Mattress",
    has_ensuite: false
)

room5 = Room.create(
    floor_number: 2,
    num_of_beds: 1,
    bed_size: "Queen Mattress",
    has_ensuite: false
)

guest1 = Guest.create(
    first_name: "Freeflow",
    last_name: "Dollarsign",
    party_size: 1,
    reason_for_stay: "New Years 2022"
)

guest2 = Guest.create(
    first_name: "Charlie",
    last_name: "Kelly",
    party_size: 6,
    reason_for_stay: "St. Patrick's weekend"
)

guest3 = Guest.create(
    first_name: "X Æ A-Xii",
    last_name: "Musk",
    party_size: 12,
    reason_for_stay: "July 4th weekend"
)

guest4 = Guest.create(
    first_name: "Kal-El",
    last_name: "Cage",
    party_size: 2,
    reason_for_stay: "Halloween weekend"
)

guest5 = Guest.create(
    first_name: "Martha",
    last_name: "Stewart",
    party_size: 12,
    reason_for_stay: "Thanksgiving weekend"
)

puts "✅ Done seeding!"