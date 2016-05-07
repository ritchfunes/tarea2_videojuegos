class CreatePelis < ActiveRecord::Migration
  def change
    create_table :pelis do |t|
      t.string :Peliculas

      t.timestamps null: false
    end
  end
end
