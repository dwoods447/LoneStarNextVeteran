class CreateAdminUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :admin_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :password_digest

      t.timestamps
    end
    add_index("admin_users", "username")
  end
  def down
    remove_index("admin_users", "username")
    drop_table :admin_users
  end
end
