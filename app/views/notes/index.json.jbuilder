json.array!(@notes) do |note|
  json.extract! note, :id, :title, :description, :subject_id, :faculty_id, :department_id
  json.url note_url(note, format: :json)
end
