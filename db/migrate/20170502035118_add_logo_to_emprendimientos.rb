class AddLogoToEmprendimientos < ActiveRecord::Migration
  def change
  	add_attachment :emprendimientos,:logo
  end
end
