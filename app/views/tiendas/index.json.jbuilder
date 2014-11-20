json.array!(@tiendas) do |tienda|
  json.extract! tienda, :id, :id_tienda, :nombre, :facebook, :twitter, :sitio, :correo, :telefono, :logo, :descripcion
  json.url tienda_url(tienda, format: :json)
end
