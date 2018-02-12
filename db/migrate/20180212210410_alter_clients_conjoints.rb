class AlterClientsConjoints < ActiveRecord::Migration[5.1]
  def change
    add_column :clients_coinjoints, :coinjoint_id, :bigint
  end
end
