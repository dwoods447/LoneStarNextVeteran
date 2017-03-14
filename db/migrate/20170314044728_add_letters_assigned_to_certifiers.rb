class AddLettersAssignedToCertifiers < ActiveRecord::Migration[5.0]
  def up
    add_column :certifiers, :letters_assigned, :string
  end

  def down
    remove_column :certifiers, :letters_assigned, :string
  end
end
