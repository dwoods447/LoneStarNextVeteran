class CreateStateBenefits < ActiveRecord::Migration[5.0]
  def change
    create_table :state_benefits, :id => false do |t|
      t.integer "state_benefit_id"
      t.string "benefit_name"
      t.timestamps
    end
    add_index("state_benefits", "state_benefit_id")
  end
  def down
    drop_table :state_benefits
  end
end
