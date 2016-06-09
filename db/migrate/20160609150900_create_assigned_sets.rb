class CreateAssignedSets < ActiveRecord::Migration
  def change
    create_table :assigned_sets do |t|
      t.integer :athlete_id
      t.integer :training_set_id

      t.timestamps null: false
    end
  end
end
