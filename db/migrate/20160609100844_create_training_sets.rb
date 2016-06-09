class CreateTrainingSets < ActiveRecord::Migration
  def change
    create_table :training_sets do |t|
      t.string :name, null: false
      t.string :description
      t.string :training_type
      t.boolean :timed
      t.integer :interval_repetitions
      t.integer :session_id
      t.timestamps
    end
  end
end
