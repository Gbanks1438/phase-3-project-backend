class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :reservation_id
      t.integer :floor_number
      t.integer :num_of_beds
      t.string :bed_size
      t.boolean :has_ensuite
    end
  end
end
