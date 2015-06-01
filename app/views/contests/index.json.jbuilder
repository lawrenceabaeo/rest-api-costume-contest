json.array!(@contests) do |contest|
  json.extract! contest, :id, :name, :description, :location, :contest_occurrence
  json.url contest_url(contest, format: :json)
end
