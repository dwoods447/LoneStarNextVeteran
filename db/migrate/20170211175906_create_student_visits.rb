class CreateStudentVisits < ActiveRecord::Migration[5.0]
  def up
    create_table :student_visits do |t|
      t.integer :student_id
      t.integer :certifier_id
      t.boolean :isSignedin
      t.string :service_requested

      t.timestamps
    end
    add_index("student_visits", "student_id")
    change_column :student_visits, :isSignedin, :boolean, :default => true
  end

  def down
    drop_table :student_visits
  end
end
