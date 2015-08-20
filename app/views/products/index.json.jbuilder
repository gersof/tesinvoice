json.array!(@products) do |product|
  json.extract! product, :id, :descripproduct, :priceunit, :category
  json.url product_url(product, format: :json)
end
