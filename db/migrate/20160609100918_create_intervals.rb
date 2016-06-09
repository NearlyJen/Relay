class CreateIntervals < ActiveRecord::Migration
  def change
    create table :intervals do |t|
      t.integer :distance, null: false
      t.integer :intensity
      t.integer :interval_time
      t.integer :set_id
      t.timestamps
    end
  end
end
