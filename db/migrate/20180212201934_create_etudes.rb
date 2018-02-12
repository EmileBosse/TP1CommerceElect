class CreateEtudes < ActiveRecord::Migration[5.1]
  def change
    create_table :etudes do |t|
      t.string :SecteurEtudes
      t.string :Niveau
      t.datetime :DateDebut
      t.datetime :DateCompletion
      t.references :clients, foreign_key: true
      t.references :institutions, foreign_key: true

      t.timestamps
    end
  end
end
