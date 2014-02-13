json.array!(@pages) do |page|
  json.extract! page, :id, :title_fa, :title_en, :text_fa, :text_en
  json.url page_url(page, format: :json)
end
