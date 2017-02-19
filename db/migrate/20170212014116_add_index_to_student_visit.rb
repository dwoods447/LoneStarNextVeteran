class AddIndexToStudentVisit < ActiveRecord::Migration[5.0]
  def change
    add_index("student_visits", "certifier_id")
  end
end
