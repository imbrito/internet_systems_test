json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :student_id, :course_id
  json.url classroom_url(classroom, format: :json)
end
