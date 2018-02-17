class AlterClientsConjoints2 < ActiveRecord::Migration[5.1]
  def change
    change_table :clients_conjoints do |t|
      t.rename :clients_id, :conjoint_id
    end
  end
end
