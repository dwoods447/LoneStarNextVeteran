class CreateCertifiers < ActiveRecord::Migration[5.0]
  def up
    create_table :certifiers, :id => false do |t|
      t.integer :certifier_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :benefit_assigned

      t.timestamps
    end
    add_index("certifiers", "certifier_id")
  end
  def down
    drop_table :certifiers
  end
end
