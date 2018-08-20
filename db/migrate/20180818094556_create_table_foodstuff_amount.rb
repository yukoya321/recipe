class CreateTableFoodstuffAmount < ActiveRecord::Migration[5.1]
  def change
    create_table :foodstuff_amounts do |t|
      t.string :foodstuff, null: false
      t.string :amount, null: false
      t.integer :order, null: false
      t.references :post, foreign_key: true, null: false, index: true
      t.timestamps
    end
  end
  
  def down
    drop_table :foodstuff_amounts
  end
end
