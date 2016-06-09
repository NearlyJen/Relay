class CreateIntervals < ActiveRecord::Migration
  def change
    create_table :intervals do |t|
      t.integer :distance, null: false
      t.integer :intensity
      t.integer :interval_time
      t.integer :training_set_id
      t.timestamps
    end
  end
end
