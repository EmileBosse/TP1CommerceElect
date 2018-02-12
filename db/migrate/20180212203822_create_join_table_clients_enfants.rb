class CreateJoinTableClientsEnfants < ActiveRecord::Migration[5.1]
  def change
    create_join_table :clients, :enfants
  end
end
