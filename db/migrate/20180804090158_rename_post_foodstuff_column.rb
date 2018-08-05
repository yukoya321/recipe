class RenamePostFoodstuffColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :post_foodstuffs, :Post_id, :post_id
    rename_column :post_foodstuffs, :Foodstuff_id, :foodstuff_id
  end
end
