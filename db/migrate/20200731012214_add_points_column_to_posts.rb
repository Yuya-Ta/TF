class AddPointsColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts,:points,:integer
  end
end
