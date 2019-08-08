class AddPerfilToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :perfil, :string
    add_column :users, :nombre, :string
    add_column :users, :telefono, :string
  end  
end
