json.array!(@users) do |user|
  json.extract! user, :id, :loginname, :password_digest, :auth_token, :isresponsible, :company_id, :phone, :hasline
  json.url user_url(user, format: :json)
end
