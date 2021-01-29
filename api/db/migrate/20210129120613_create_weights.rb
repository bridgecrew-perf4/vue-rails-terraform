class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.integer :weight
      t.string :measurement_time
      t.string :body_fat_percentage

      t.timestamps
    end
  end
end
