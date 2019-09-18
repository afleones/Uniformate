class AddColumnToArticulos < ActiveRecord::Migration[5.1]
  def change
    add_column :articulos, :imagen, :string
  end
end
