class CreateTallas < ActiveRecord::Migration[5.1]
  def change
    create_table :tallas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
