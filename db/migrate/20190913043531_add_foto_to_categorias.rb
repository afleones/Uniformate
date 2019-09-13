class AddFotoToCategorias < ActiveRecord::Migration[5.1]
  def change
    add_column :categorias, :foto, :string
  end
end
