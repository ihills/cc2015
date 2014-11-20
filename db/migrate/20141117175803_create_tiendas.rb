class CreateTiendas < ActiveRecord::Migration
  def change
    create_table :tiendas do |t|
      t.integer :id_tienda
      t.string :nombre
      t.string :facebook
      t.string :twitter
      t.string :sitio
      t.string :correo
      t.string :telefono
      t.string :logo
      t.text :descripcion

      t.timestamps
    end
  end
end
