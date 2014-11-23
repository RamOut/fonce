json.array!(@templates) do |template|
  json.extract! template, :id, :name, :description, :author_id
  json.url template_url(template, format: :json)
end
