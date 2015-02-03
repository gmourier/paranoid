json.array!(@concerts) do |concert|
  json.extract! concert, :id
  json.url concert_url(concert, format: :json)
end
