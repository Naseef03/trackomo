class CreateExpenses < ActiveRecord::Migration[8.0]
  def change
    create_table :expenses do |t|
      t.string :space
      t.string :category
      t.string :description
      t.date :date
      t.string :account
      t.float :amount

      t.timestamps
    end
  end
end
