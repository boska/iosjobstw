class AddEmailToCase < ActiveRecord::Migration
  def self.up
    add_column :cases, :email, :string
  end

  def self.down
    remove_column :cases, :email
  end
end
