json.array!(@users) do |user|
  json.extract! user, :id, :username, :name, :type
  json.url user_url(user, format: :json)
end
