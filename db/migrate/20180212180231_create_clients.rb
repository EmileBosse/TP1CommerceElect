class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :Prenom
      t.string :Nom
      t.datetime :DateNaissance
      t.string :NAS
      t.references :adresses, foreign_key: true
      t.integer :NombreEnfants
      t.integer :CompteTaxesProprietaire

      t.timestamps
    end
  end
end
