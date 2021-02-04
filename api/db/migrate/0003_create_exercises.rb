class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :user_id
      t.references :exercise_menu
      t.datetime :exercise_time
      t.integer :number
      t.integer :set
      t.time :time
      t.decimal :distance, precision: 6, scale: 2  

      t.timestamps
    end
  end
end
