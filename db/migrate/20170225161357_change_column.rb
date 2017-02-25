class ChangeColumn < ActiveRecord::Migration[5.0]
  def up
    rename_column(:reason_for_visits, :visit_reason_id, :reason_for_visit_id)
    rename_column(:student_visits, :visit_reason_id, :reason_for_visit_id)
  end

  def down
    rename_column(:student_visits, :visit_reason_id, :reason_for_visit_id)
    rename_column(:reason_for_visits, :reason_for_visit_id, :visit_reason_id)
  end
end
