class AddLogoToJobs < ActiveRecord::Migration
  def change
    add_attachment :jobs, :logo
  end
end
