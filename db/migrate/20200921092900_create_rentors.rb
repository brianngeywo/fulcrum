class CreateRentors < ActiveRecord::Migration[6.0]
  def change
    create_table :rentors do |t|
      t.string :rentor_first_name
      t.string :rentor_last_name
      t.text :rentor_phone_number
      t.integer :property_id
      t.timestamps
    end
  end
end
