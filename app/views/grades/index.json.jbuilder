json.array!(@grades) do |grade|
  json.extract! grade, :id, :score, :student_id, :name
  json.url grade_url(grade, format: :json)
end
