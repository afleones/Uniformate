class AddCategoriaToArticulo < ActiveRecord::Migration[5.1]
  def change
    add_reference :articulos , :categoria , foreign_key: true
  end
end
