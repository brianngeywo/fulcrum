class CreateFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :furnitures do |t|
      t.integer :furniture_category_id
      t.string :description

      t.timestamps
    end
  end
end
