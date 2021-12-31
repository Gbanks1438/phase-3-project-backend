class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.integer :fireplaces
      t.integer :rooms
      t.integer :max_guests
      t.boolean :has_modern_amenities
      t.boolean :is_lakeside
    end
  end
end