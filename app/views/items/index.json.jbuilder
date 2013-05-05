json.array!(@items) do |item|
  json.extract! item, :name, :hay
  json.url item_url(item, format: :json)
end