class AddReasonForVisitToStudentVisit < ActiveRecord::Migration[5.0]
  def up
     add_column(:student_visits, :visit_reason_id, :integer)
  end
  def down
    remove_column(:student_visits, :visit_reason_id, :integer)
  end
end
