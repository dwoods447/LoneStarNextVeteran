class AddCertifierStatusToCertifier < ActiveRecord::Migration[5.0]
  def up
    add_column(:certifiers, :status_id, :integer)
  end

  def down
    remove_column(:certifiers, :status_id, :integer)
  end
end
