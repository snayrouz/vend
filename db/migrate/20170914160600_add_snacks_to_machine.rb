class AddSnacksToMachine < ActiveRecord::Migration[5.1]
  def change
    add_reference :machines, :snack, foreign_key: true
  end
end
