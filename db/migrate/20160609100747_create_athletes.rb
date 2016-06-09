class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :username, null: false
      t.string :email
      t.integer :age
      t.integer :event_group_id
      t.timestamps
    end
  end
end
