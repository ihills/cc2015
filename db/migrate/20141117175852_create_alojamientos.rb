class CreateAlojamientos < ActiveRecord::Migration
  def change
    create_table :alojamientos do |t|
      t.string :id_aloja
      t.string :nombre
      t.string :sitio
      t.string :coreo
      t.string :telefono

      t.timestamps
    end
  end
end
