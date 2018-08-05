class RenamePostTagsColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :post_tags, :Post_id, :post_id
    rename_column :post_tags, :Tag_id, :tag_id
  end
end
