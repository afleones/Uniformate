class AddCampoUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :apellido, :string
    add_column :articulos, :estado, :boolean , default: true
  end
end
