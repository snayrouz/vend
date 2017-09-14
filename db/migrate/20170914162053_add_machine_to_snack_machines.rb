class AddMachineToSnackMachines < ActiveRecord::Migration[5.1]
  def change
    add_reference :snack_machines, :machine, foreign_key: true
  end
end
