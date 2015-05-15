json.array!(@users) do |user|
  json.extract! user, :id, :Nom, :Prénom, :Promotion, :email, :Tél, :IsAdmin, :password
  json.url user_url(user, format: :json)
end
