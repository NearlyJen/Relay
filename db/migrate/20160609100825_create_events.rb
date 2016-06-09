class CreateEvents < ActiveRecord::Migration
  def change
    create table :events do |t|
      t.string :name, null: false
      t.integer :event_group_id
      t.timestamps
    end
  end
end
