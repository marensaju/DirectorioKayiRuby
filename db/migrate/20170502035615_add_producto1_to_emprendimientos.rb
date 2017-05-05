class AddProducto1ToEmprendimientos < ActiveRecord::Migration
  def change
  	add_attachment :emprendimientos,:producto1
  end
end
