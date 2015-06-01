json.array!(@category_descriptions) do |category_description|
  json.extract! category_description, :id, :name, :description
  json.url category_description_url(category_description, format: :json)
end
