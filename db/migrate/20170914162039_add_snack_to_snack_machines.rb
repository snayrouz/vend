class AddSnackToSnackMachines < ActiveRecord::Migration[5.1]
  def change
    add_reference :snack_machines, :snack, foreign_key: true
  end
end
