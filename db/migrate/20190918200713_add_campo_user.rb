class AddCampoUser < ActiveRecord::Migration[5.1]
  def change
     add_column :users, :apellidos, :string
     add_column :articulos, :estado, :boolean
  end
end
