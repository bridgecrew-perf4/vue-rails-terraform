class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :menu
      t.integer :calorie

      t.timestamps
    end
  end
end
