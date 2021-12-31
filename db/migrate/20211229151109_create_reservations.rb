class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :hotel_id
      t.integer :guest_id
      t.integer :room_id
      t.string :date_start
      t.string :date_end
    end
  end
end