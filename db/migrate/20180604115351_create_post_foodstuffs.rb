class CreatePostFoodstuffs < ActiveRecord::Migration[5.1]
  def change
    create_table :post_foodstuffs do |t|
      t.references :Post
      t.references :Foodstuff

      t.timestamps
    end
  end
end
