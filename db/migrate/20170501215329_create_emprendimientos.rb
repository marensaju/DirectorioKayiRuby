class CreateEmprendimientos < ActiveRecord::Migration
  def change
    create_table :emprendimientos do |t|
      t.string :titulo
      t.text :descripcion
      t.text :etiquetas
      t.string :correo
      t.string :pweb
      t.string :pface
      t.string :ptwitter
      t.string :pinstagram
      t.string :pbehance
      t.string :pyoutube
      t.string :plinkedin
      t.string :ihoraio
      t.string :fhorario
      t.string :telefono
      t.string :direccion
      t.string :lvideo

      t.timestamps null: false
    end  
  end
end
