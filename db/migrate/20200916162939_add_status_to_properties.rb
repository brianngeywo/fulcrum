class AddStatusToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :status, :string, default: "available"
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
