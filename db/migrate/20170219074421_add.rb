class Add < ActiveRecord::Migration[5.0]
  def up
    add_column(:students, :federal_benefit_id, :integer)
    add_column(:students, :state_benefit_id, :integer)
  end

  def down
    remove_column(:students, :state_benefit_id, :integer)
    remove_column(:students, :federal_benefit_id, :integer)
  end
end
