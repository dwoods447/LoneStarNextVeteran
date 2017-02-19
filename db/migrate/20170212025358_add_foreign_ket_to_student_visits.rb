class AddForeignKetToStudentVisits < ActiveRecord::Migration[5.0]
  def up
    change_column :student_visits, :student_id, :integer,  foreign_key: true
    change_column :student_visits, :certifier_id,:integer,  foreign_key: true
  end
  def down
    change_column :student_visits, :student_id, :integer
    change_column :student_visits, :certifier_id, :integer
  end
end
