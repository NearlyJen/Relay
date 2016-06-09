class CreateEventGroups < ActiveRecord::Migration
  def change
    create_table :event_groups do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
