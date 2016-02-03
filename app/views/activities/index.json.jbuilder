json.array!(@activities) do |activity|
  json.extract! activity, :id, :date, :duration, :description
  json.url activity_url(activity, format: :json)
end
