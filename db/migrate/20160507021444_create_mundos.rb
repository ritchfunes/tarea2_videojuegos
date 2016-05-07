class CreateMundos < ActiveRecord::Migration
  def change
    create_table :mundos do |t|
      t.string :pelicula
      t.string :series
      t.string :videojuegos

      t.timestamps null: false
    end
  end
end
