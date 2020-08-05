class AddCountsColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts,:counts,:integer
    add_column :posts,:start_date,:date
    add_column :posts,:finish_date,:date
  end
end
