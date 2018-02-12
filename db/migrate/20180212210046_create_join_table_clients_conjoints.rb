class CreateJoinTableClientsConjoints < ActiveRecord::Migration[5.1]
  def change
    create_join_table :clients, :clients, table_name: :clients_conjoints do|t|
      t.datetime :dateDebut
      t.datetime :dateFin
    end
    change_column_null :clients_conjoints, :dateFin, :true
  end
end
