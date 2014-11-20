class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.integer :id_noticia
      t.date :fecha
      t.string :titulo
      t.string :subtitulo
      t.string :foto
      t.text :texto

      t.timestamps
    end
  end
end
