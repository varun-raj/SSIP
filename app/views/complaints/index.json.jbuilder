json.array!(@complaints) do |complaint|
  json.extract! complaint, :id, :title, :description, :department_id, :complainttype_id
  json.url complaint_url(complaint, format: :json)
end
