class AddPropertyImagesToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :property_images, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
