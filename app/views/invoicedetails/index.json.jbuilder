json.array!(@invoicedetails) do |invoicedetail|
  json.extract! invoicedetail, :id, :quantity, :price
  json.url invoicedetail_url(invoicedetail, format: :json)
end
