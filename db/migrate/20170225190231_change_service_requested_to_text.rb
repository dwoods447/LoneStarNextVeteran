class ChangeServiceRequestedToText < ActiveRecord::Migration[5.0]
  def up
     change_column(:student_visits, :service_requested, :text)
  end
  def down
    change_column(:student_visits, :service_requested, :string)
  end
end
