json.array!(@pelis) do |peli|
  json.extract! peli, :id, :Peliculas
  json.url peli_url(peli, format: :json)
end
