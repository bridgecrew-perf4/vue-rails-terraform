class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :user_id
      t.belongs_to :meal_menu
      t.datetime :eat_time
      t.string :quantity

      t.timestamps
    end
  end
end
