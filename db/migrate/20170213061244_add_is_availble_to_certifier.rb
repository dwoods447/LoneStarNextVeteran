class AddIsAvailbleToCertifier < ActiveRecord::Migration[5.0]
  def up
    add_column(:certifiers, :IsAvailable , :boolean, :default => true)
  end
  def down
    remove_column(:certifiers, :IsAvailable , :boolean, :default => true)
  end
end
