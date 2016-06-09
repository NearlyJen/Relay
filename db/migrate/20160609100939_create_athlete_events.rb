class CreateAthleteEvents < ActiveRecord::Migration
  def change
    create_table :athlete_events do |t|
      t.float :personal_record
      t.integer :event_id
      t.integer :athlete_id
      t.timestamps
    end
  end
end
