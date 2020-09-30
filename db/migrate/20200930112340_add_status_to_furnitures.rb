class AddStatusToFurnitures < ActiveRecord::Migration[6.0]
  def change
    add_column :furnitures, :status, :string, :default => "available"
    add_column :furnitures, :for_sale, :boolean, :default => true
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
