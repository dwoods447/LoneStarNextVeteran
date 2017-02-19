json.extract! student, :id, :student_id, :campus_id, :first_name, :last_name, :phone, :email, :created_at, :updated_at
json.url student_url(student, format: :json)