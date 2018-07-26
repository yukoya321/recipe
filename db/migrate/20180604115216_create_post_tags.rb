class CreatePostTags < ActiveRecord::Migration[5.1]
  def change
    create_table :post_tags do |t|
      t.references :Post
      t.references :Tag

      t.timestamps
    end
  end
end
