json.array!(@consignees) do |consignee|
  json.extract! consignee, :id, :name, :phone, :company_id, :weight, :volume, :address
  json.url consignee_url(consignee, format: :json)
end
