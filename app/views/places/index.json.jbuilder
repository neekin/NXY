json.array!(@places) do |place|
  json.extract! place, :id, :name, :company_id
  json.url place_url(place, format: :json)
end
