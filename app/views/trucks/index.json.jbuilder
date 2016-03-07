json.array!(@trucks) do |truck|
  json.extract! truck, :id, :driver, :phone, :licensePlateNumber, :company_id
  json.url truck_url(truck, format: :json)
end
