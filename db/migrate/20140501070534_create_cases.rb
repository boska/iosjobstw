class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :name
      t.string :description
      t.integer :lower_bound
      t.integer :upper_bound

      t.timestamps
    end
  end
end
