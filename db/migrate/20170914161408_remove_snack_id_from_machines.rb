class RemoveSnackIdFromMachines < ActiveRecord::Migration[5.1]
  def change
    remove_index :machines, :snack_id
    remove_column :machines, :snack_id, :string
  end
end
