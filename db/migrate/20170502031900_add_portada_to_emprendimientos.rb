class AddPortadaToEmprendimientos < ActiveRecord::Migration
  def change
  	add_attachment :emprendimientos,:portada
  end
end
