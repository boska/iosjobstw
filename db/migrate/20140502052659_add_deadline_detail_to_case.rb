class AddDeadlineDetailToCase < ActiveRecord::Migration
  def self.up
    add_column :cases, :deadline, :datetime
    add_column :cases, :detail, :text
  end

  def self.down
    remove_column :cases, :deadline
    remove_column :cases, :detail
  end
end
