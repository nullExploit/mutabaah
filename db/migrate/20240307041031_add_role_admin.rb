class AddRoleAdmin < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :role, :string, :default => 'USER'
    #Ex:- :default =>''
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end