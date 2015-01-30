json.array!(@concerts) do |concerts|
  json.extract! concert, :id
  json.url concert_url(concert, format: :json)
end
