class CreateExerciseMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_menus do |t|
      t.string :user_id
      t.string :name
      t.decimal :calorie, precision: 5, scale: 1

      t.timestamps
    end
  end
end
