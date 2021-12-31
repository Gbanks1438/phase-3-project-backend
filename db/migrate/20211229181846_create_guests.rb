class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.integer :reservation_id
      t.string :first_name
      t.string :last_name
      t.integer :party_size
      t.string :reason_for_stay
    end
  end
end
