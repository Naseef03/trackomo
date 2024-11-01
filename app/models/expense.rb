class Expense < ApplicationRecord
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :date, presence: true
end
