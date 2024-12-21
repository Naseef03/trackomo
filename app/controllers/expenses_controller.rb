class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
  end

  def create
  end
end
