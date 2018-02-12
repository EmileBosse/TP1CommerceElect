class CreateJoinTableClientsEmployeurs < ActiveRecord::Migration[5.1]
  def change
    create_join_table :clients, :employeurs do |t|
      t.datetime :dateDebut
      t.datetime :dateFin
    end
    change_column_null :clients_employeurs, :dateFin, true
  end
end
