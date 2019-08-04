class CreateArticulos < ActiveRecord::Migration[5.1]
  def change
    create_table :articulos do |t|
      t.string :nombre

      t.timestamps
    end
    add_column :articulos, :cantidad, :integer
  end
end
