class CreateFederalBenefits < ActiveRecord::Migration[5.0]
  def up
    create_table :federal_benefits, :id => false do |t|
      t.integer "federal_benefit_id"
      t.string "benefit_name"
      t.timestamps
    end
    add_index("federal_benefits", "federal_benefit_id")
  end
  def down
    drop_table :federal_benefits
  end
end
