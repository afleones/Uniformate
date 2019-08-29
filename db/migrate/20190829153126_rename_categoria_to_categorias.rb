class RenameCategoriaToCategorias < ActiveRecord::Migration[5.1]
  def change
    rename_table :categoria, :categorias
  end
end
