class CreateEspecialidades < ActiveRecord::Migration[5.1]
  def change
    create_table :especialidades do |t|
      t.string :nombre

      t.timestamps
    end
    add_reference :articulos , :especialidades , foreign_key: true
  end
end
