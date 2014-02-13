json.array!(@employers) do |employer|
  json.extract! employer, :id, :title, :web_site
  json.url employer_url(employer, format: :json)
end
