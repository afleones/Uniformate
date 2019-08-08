class AddColumnToArticulo < ActiveRecord::Migration[5.1]
  def change
    add_column :articulos, :codigo, :integer
    add_column :articulos, :valor, :integer
  end
end
