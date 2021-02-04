class CreateMealMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_menus do |t|
      t.string :user_id
      t.string :name
      t.decimal :calorie, precision: 5, scale: 1  
      t.decimal :carbohydrate, precision: 6, scale: 2  
      t.decimal :protein, precision: 5, scale: 2  
      t.decimal :lipid, precision: 5, scale: 2  

      t.timestamps
    end
  end
end
