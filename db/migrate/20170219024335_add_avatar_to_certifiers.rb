class AddAvatarToCertifiers < ActiveRecord::Migration[5.0]
  def up
    add_column :certifiers, :avatar, :string
  end
  def down
    remove_column :certifiers, :avatar, :string
  end
end
