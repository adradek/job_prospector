class AddSlariesToJobEntry < ActiveRecord::Migration[5.2]
  def change
    add_monetize :job_entries, :salary
    add_monetize :job_entries, :top_salary, amount: { null: true, default: nil }
  end
end
