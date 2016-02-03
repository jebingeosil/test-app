json.array!(@tasks) do |task|
  json.extract! task, :id, :start_date, :end_date, :status, :planned_hours
  json.url task_url(task, format: :json)
end
