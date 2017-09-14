class Snack < ApplicationRecord
  belongs_to :machine
  validates :name, presence: true
  validates :price, presence: true
end
