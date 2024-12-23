class AddExpIncToExpenses < ActiveRecord::Migration[8.0]
  def change
    add_column :expenses, :exp_inc, :string
  end
end
