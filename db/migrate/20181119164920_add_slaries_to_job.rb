class AddSlariesToJob < ActiveRecord::Migration[5.2]
  def change
    add_monetize :jobs, :salary, amount: { null: true, default: nil }
    add_monetize :jobs, :top_salary, amount: { null: true, default: nil }
  end
end
