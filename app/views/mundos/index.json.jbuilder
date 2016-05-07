json.array!(@mundos) do |mundo|
  json.extract! mundo, :id, :pelicula, :series, :videojuegos
  json.url mundo_url(mundo, format: :json)
end
