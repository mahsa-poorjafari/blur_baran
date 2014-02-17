json.array!(@teams) do |team|
  json.extract! team, :id, :name_en, :name_fa, :education_fa, :education_en, :email, :description_fa, :description_en
  json.url team_url(team, format: :json)
end
