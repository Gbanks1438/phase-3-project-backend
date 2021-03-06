class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    { message: "Ay-yo! You did a thing!" }.to_json
  end

  get "/reservations" do
    Reservation.all.to_json
  end

  get "/reservations/:id" do
    reservation = Reservation.find(params[:id])
    reservation.to_json
  end

  post "/reservations" do
    Reservation.create(
      {
        hotel_id:params[:hotel_id], 
        guest_id:params[:guest_id],
        room_id:params[:room_id],
        date_start:params[:date_start],
        date_end:params[:date_end]
      }).to_json
  end

  delete "/reservations/:id" do
    reservation = Reservation.find(params[:id])
    reservation.destroy
    reservation.to_json
  end

  patch '/reservations/:id' do
    reservation = Reservation.find(params[:id])
    reservation.update(
      hotel_id: params[:hotel_id],
      guest_id: params[:guest_id],
      room_id: params[:room_id],
      date_start: params[:date_start],
      date_end: params[:date_end]
    )
    reservation.to_json
  end    

  get "/guests" do
    Guest.all.to_json
  end

  get "/guests/:id" do
    guest = Guest.find(params[:id])
    guest.to_json
  end

  get "/hotels" do
    Hotel.all.to_json
  end

  get "/rooms" do
    Room.all.to_json
  end

   get "/rooms/:id" do
    room = Room.find(params[:id])
    room.to_json
  end

end