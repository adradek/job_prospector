class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string   :title,       null: false
      t.string   :url,         null: false
      t.string   :company
      t.string   :company_url
      t.string   :location
      t.boolean  :remote,      default: false
      t.integer  :job_type
      t.text     :description
      t.integer  :experience_level
      t.text     :tags, array: true, default: []

      t.timestamps
    end
  end
end
