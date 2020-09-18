class AddNameAndBathroomsDescriptionToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :name, :string
    add_column :properties, :bathrooms, :integer
    add_column :properties, :description, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
