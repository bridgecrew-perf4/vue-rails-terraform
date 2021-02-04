class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string  :account_id
      t.decimal :target_weight, precision: 5, scale: 2  
      t.decimal :target_body_fat, precision: 4, scale: 2  

      t.timestamps
    end
  end
end
