json.array!(@alojamientos) do |alojamiento|
  json.extract! alojamiento, :id, :id_aloja, :nombre, :sitio, :coreo, :telefono
  json.url alojamiento_url(alojamiento, format: :json)
end
