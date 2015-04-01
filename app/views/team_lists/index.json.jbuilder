json.array!(@team_lists) do |team_list|
  json.extract! team_list, :id, :name
  json.url team_list_url(team_list, format: :json)
end
