require 'rails_helper'

RSpec.describe Expense, type: :model do
  it "is valid with an amount and date" do
    expense = Expense.new(amount: 50.0, date: Date.today)
    expect(expense).to be_valid
  end

  it "is invalid without an amount" do
    expense = Expense.new(date: Date.today)
    expect(expense).not_to be_valid
  end

  it "is invalid without a date" do
    expense = Expense.new(amount: 50.0)
    expect(expense).not_to be_valid
  end

  it "is invalid if the amount is NaN" do
    expense = Expense.new(amount: "fifty", date: Date.today)
    expect(expense).not_to be_valid
  end

  it "is invalid if the amount is negative" do
    expense = Expense.new(amount: -50.0, date: Date.today)
    expect(expense).not_to be_valid
  end
end
