class CreateExerciseRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_records do |t|
      t.integer :exercise_id
      t.integer :number
      t.string :exercise_time

      t.timestamps
    end
  end
end
