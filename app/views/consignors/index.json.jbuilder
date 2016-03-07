json.array!(@consignors) do |consignor|
  json.extract! consignor, :id, :name, :phone, :company_id
  json.url consignor_url(consignor, format: :json)
end
