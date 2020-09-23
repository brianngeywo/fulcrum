class CreateRentors < ActiveRecord::Migration[6.0]
  def change
    create_table :rentors do |t|
      t.string :name
      t.text :phone_number
      t.time :datetime
      t.string :time_zone, default: "Nairobi"
      t.integer :property_id
      t.timestamps
    end
  end
end
