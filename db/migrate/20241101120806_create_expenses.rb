class CreateExpenses < ActiveRecord::Migration[7.2]
  def change
    create_table :expenses do |t|
      t.string :name
      t.decimal :amount
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
