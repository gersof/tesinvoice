json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :dateinvoice, :noteinvoice
  json.url invoice_url(invoice, format: :json)
end
