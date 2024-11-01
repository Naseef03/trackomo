FactoryBot.define do
  factory :expense do
    amount { 50.0 }
    date { Date.today }
    description { "Test Expense" }
  end
end
