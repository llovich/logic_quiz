json.array!(@logicians) do |logician|
  json.extract! logician, :id, :first_name, :last_name, :hint1, :hint2, :hint3, :difficulty_level, :bio
  json.url logician_url(logician, format: :json)
end
