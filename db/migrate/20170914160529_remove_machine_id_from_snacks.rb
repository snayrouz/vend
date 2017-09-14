class RemoveMachineIdFromSnacks < ActiveRecord::Migration[5.1]
  def change
    remove_index :snacks, :machine_id
    remove_column :snacks, :machine_id, :string
  end
end
