json.array!(@tracs) do |trac|
  json.extract! trac, :id, :flight, :airline
  json.url trac_url(trac, format: :json)
end
