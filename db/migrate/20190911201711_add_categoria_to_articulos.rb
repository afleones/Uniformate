class AddCategoriaToArticulos < ActiveRecord::Migration[5.1]
  def change
    add_reference :articulos , :categoria , index: true
    #add_reference :articulos , :talla , index: true
    #add_reference :articulos , :especialidad , index: true
  end
end
