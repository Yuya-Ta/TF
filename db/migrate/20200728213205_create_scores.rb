class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :points_l
      t.integer :points_r
      t.date :month

      t.timestamps
    end
  end
end
