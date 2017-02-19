class CreateCertifierStatuses < ActiveRecord::Migration[5.0]
  def up
    create_table :certifier_statuses, :id => false do |t|
       t.integer :status_id
       t.string  :status
       t.timestamps
    end
    add_index("certifier_statuses", "status_id")
  end
  def down
    drop_table :certifier_statuses
  end
end
