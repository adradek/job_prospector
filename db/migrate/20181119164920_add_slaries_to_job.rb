class AddSlariesToJob < ActiveRecord::Migration[5.2]
  def change
    add_monetize :jobs, :salary_from
    add_monetize :jobs, :salary_to
  end
end
