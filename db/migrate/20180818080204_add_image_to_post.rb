class AddImageToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :image, :string
  end
  def down
    remove_column :posts, :image, :string
  end
end
