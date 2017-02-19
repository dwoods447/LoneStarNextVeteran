class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students, :id => false do |t|
      t.integer :student_id
      t.integer :campus_id
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
