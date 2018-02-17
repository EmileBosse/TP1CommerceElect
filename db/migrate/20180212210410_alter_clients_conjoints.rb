class AlterClientsConjoints < ActiveRecord::Migration[5.1]
  def change
   add_reference :clients_conjoints, :clients

  end
end
