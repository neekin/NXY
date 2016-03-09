json.array!(@lines) do |line|
  json.extract! line, :id, :place_id, :destination_id, :company_id
  json.url line_url(line, format: :json)
end
