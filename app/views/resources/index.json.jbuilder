json.array!(@resources) do |resource|
  json.extract! resource, :id, :title_fa, :title_en, :text_html_fa, :text_html_en, :link
  json.url resource_url(resource, format: :json)
end
