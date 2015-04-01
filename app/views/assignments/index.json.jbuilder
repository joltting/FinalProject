json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :Problem, :ActiveClass
  json.url assignment_url(assignment, format: :json)
end
