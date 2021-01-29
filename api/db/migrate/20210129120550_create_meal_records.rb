class CreateMealRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_records do |t|
      t.integer :meal_id
      t.string :meal_time
      t.string :quantity

      t.timestamps
    end
  end
end
