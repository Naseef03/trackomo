class Expense < ApplicationRecord
  validates :space, presence: true
  validates :date, presence: true
  validates :category, presence: true
  validates :account, presence: true
  validates :amount, comparison: { greater_than: 0 }
end
