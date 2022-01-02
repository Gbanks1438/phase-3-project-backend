class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Congrats! You did a thing!" }.to_json
  end

  get "/guests" do
    Guest.all.to_json
  end

  
  get "/hotels" do
    Hotel.all.to_json
  end

  
  get "/reservations" do
    Reservation.all.to_json
  end

  
  get "/rooms" do
    Room.all.to_json
  end

end
