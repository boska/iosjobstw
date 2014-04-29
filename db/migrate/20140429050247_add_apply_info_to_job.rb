class AddApplyInfoToJob < ActiveRecord::Migration
  def self.up
    add_column :jobs, :apply, :text
  end

  def self.down
    remove_column :jobs, :apply
  end
end
