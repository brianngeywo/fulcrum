class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :bedrooms
      t.integer :price
      t.integer :user_id
      t.boolean :for_sale, default: false
      t.string :status, default: "available"
      t.float :longitude
      t.float :latitude
      
      t.timestamps
    end
  end
end
