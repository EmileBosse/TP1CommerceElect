class CreateJoinTableClientsEtatsCivils < ActiveRecord::Migration[5.1]
  def change
    create_join_table :clients, :etats_civils do |t|
      t.datetime :dateDebut
      t.datetime :dateFin
    end

    change_column_null :clients_etats_civils, :dateFin, true
  end
end
