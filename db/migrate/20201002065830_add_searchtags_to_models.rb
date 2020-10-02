class AddSearchtagsToModels < ActiveRecord::Migration[6.0]
  def change
    add_column :furnitures, :searchtags, :string
    add_column :properties, :searchtags, :string
    add_column :furniture_categories, :searchtags, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
