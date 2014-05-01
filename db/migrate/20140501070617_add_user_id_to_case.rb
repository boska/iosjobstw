class AddUserIdToCase < ActiveRecord::Migration
  def self.up
    add_column :cases, :user_id, :integer
  end

  def self.down
    remove_column :cases, :user_id
  end

end
