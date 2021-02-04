class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.string :user_id
      t.integer :value
      t.integer :body_fat
      t.datetime :measurement_time

      t.timestamps
    end
  end
end
