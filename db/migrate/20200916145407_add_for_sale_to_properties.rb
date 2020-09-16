class AddForSaleToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :for_sale, :boolean, default: false
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
