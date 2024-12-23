class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenses = current_user.expenses.all
    @sum = @expenses.group("exp_inc").sum("amount")

    @expense = Expense.new
  end

  def create
    @expense = current_user.expenses.new(expense_params)

    if @expense.save
      redirect_to expenses_path, notice: "Expense added Successfully"
    else
      @expenses = Expense.all
      render :index
    end
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    redirect_to expenses_path, notice: "Expense deleted Successfully"
  end

  private

    def expense_params
      params.require(:expense).permit(:space, :category, :description, :date, :account, :amount, :exp_inc)
    end
end
