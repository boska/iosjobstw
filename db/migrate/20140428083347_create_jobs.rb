class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :company_name
      t.string :url
      t.integer :job_type
      t.string :location
      t.text :description
      t.date :deadline

      t.timestamps
    end
  end
end
