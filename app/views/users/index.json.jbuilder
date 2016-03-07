json.array!(@users) do |user|
  json.extract! user, :id, :loginname, :password_digest, :auth_token, :company_id, :phone
  json.url user_url(user, format: :json)
end
