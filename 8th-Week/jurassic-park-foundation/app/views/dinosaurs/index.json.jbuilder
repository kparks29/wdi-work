json.array!(@dinosaurs) do |dinosaur|
  json.extract! dinosaur, :id, :name, :other_name, :diet, :description
  json.url dinosaur_url(dinosaur, format: :json)
end
