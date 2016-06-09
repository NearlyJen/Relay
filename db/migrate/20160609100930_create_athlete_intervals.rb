class CreateAthleteIntervals < ActiveRecord::Migration
  def change
    create table :athlete_intervals do |t|
      t.float :athlete_time, null: false
      t.integer :interval_id
      t.integer :athlete_id
      t.timestamps
    end
  end
end
