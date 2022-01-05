class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Ay-yo! You did a thing!" }.to_json
  end

  get "/guests" do
    Guest.all.to_json
  end

  ## BROKEN CODE
  # get "/guests/:id" do
  #   Guest.find(params[:id]).to_json
  # end

  get "/hotels" do
    Hotel.all.to_json
  end

  
  get "/reservations" do
    Reservation.all.to_json
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

  # DELETING RESERVATIONS

  
  get "/rooms" do
    Room.all.to_json
  end

end
