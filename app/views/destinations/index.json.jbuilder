json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :company_id
  json.url destination_url(destination, format: :json)
end
