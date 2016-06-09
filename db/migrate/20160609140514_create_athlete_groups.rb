class CreateAthleteGroups < ActiveRecord::Migration
  def change
    create_table :athlete_groups do |t|
      t.integer :event_group_id
      t.integer :athlete_id

      t.timestamps null: false
    end
  end
end
