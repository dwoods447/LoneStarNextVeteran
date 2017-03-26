class ChangePhoneNumberOnStudents < ActiveRecord::Migration[5.0]
  def up
    rename_column :students, :phone, :phone_number
  end

  def down
    rename_column :students,  :phone_number, :phone
  end
end
