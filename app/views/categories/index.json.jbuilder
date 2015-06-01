json.array!(@categories) do |category|
  json.extract! category, :id, :contest_id, :category_description_id
  json.url category_url(category, format: :json)
end
