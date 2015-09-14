json.array!(@spots) do |spot|
  json.extract! spot, :id, :latitude, :longitude, :address, :description, :title
  json.url spot_url(spot, format: :json)
end
