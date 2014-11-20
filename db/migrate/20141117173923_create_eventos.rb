class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.datetime :fecha

      t.timestamps
    end
  end
end
