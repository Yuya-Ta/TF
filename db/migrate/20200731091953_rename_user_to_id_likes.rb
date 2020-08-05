class RenameUserToIdLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes,:to_id,:integer
  end
end
