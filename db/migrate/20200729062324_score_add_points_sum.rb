class ScoreAddPointsSum < ActiveRecord::Migration[5.2]
  def change
    add_column :scores,:points_sum,:integer
  end
end
