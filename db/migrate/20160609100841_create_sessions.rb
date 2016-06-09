class CreateSessions < ActiveRecord::Migration
  def change
    create table :sessions do |t|
      t.string :name, null: false
      t.string :description
      t.integer :event_group_id
      t.timestamps
    end
  end
end
