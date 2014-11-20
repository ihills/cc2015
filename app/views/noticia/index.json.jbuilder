json.array!(@noticia) do |noticium|
  json.extract! noticium, :id, :id_noticia, :fecha, :titulo, :subtitulo, :foto, :texto
  json.url noticium_url(noticium, format: :json)
end
