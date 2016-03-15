json.array!(@departs) do |depart|
  json.extract! depart, :id, :departureTime, :line_id, :status, :truck_id
  json.url depart_url(depart, format: :json)
end
