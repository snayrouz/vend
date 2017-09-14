class RemovePriceFromSnacks < ActiveRecord::Migration[5.1]
  def change
    remove_column :snacks, :price, :integer
  end
end
