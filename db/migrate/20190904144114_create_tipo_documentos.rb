class CreateTipoDocumentos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_documentos do |t|
      t.string :nombre

      t.timestamps
    end
    add_reference :users , :tipo_documento , index: true
    add_column :users, :documento, :integer , uniqueness: true
  end
end
