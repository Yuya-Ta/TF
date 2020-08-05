class RenameContentColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :content, :good_content
    add_column :posts,:bad_content,:text
  end
end
