json.array!(@testboots) do |testboot|
  json.extract! testboot, :id, :name
  json.url testboot_url(testboot, format: :json)
end
