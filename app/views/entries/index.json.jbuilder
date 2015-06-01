json.array!(@entries) do |entry|
  json.extract! entry, :id, :person, :character, :display_rank, :category_id, :title
  json.url entry_url(entry, format: :json)
end
