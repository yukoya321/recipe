class CreateRecipeProcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_processes do |t|
      t.string :title
      t.text :description, null: false
      t.integer :order, index: true, null: false
      t.references :post, foreign_key: true, null: false
      t.timestamps
    end
  end
end
