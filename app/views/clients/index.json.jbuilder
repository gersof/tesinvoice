json.array!(@clients) do |client|
  json.extract! client, :id, :identitynumber, :nameclient, :telephone, :mobile, :address, :email
  json.url client_url(client, format: :json)
end
