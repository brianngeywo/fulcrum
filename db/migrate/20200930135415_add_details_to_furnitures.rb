class AddDetailsToFurnitures < ActiveRecord::Migration[6.0]
  def change
    add_column :furnitures, :latitude, :float
    add_column :furnitures, :longitude, :float
    add_column :furnitures, :furniture_images, :string
    add_column :furnitures, :address, :string, :default => "eldoret"
    add_column :furnitures, :price, :integer, :default => 1000
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
