class ChangeDeadlineToDatetime < ActiveRecord::Migration
  def up
    change_column :jobs, :deadline, :datetime
  end

  def down
    change_column :jobs, :deadline, :date
  end
end
