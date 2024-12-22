class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all

    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)

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
      params.require(:expense).permit(:space, :category, :description, :date, :account, :amount)
    end
end
