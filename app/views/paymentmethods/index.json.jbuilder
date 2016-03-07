json.array!(@paymentmethods) do |paymentmethod|
  json.extract! paymentmethod, :id, :name, :company_id
  json.url paymentmethod_url(paymentmethod, format: :json)
end
