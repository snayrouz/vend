class Snack < ApplicationRecord
  has_many :snack_machines
  has_many :machines, through: :snack_machines
  validates :name, presence: true
  validates :price, presence: true

  def self.average_price
    sum(:price)/ machines.total_snacks  
  end

end
