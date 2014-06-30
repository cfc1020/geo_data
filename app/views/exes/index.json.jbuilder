json.array!(@exes) do |ex|
  json.extract! ex, :id, :name
  json.url ex_url(ex, format: :json)
end
