class RenameDifficultyPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :difficaluty, :difficulty
  end
end
