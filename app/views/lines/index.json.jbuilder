json.array!(@lines) do |line|
  json.extract! line, :id, :place, :destination, :company_id
  json.url line_url(line, format: :json)
end
