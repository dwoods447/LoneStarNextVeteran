json.extract! student_visit, :id, :student_id, :certifier_id, :isSignedin, :service_requested, :created_at, :updated_at
json.url student_visit_url(student_visit, format: :json)