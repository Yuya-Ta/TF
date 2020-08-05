class AddUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:image_name,:string
    add_column :users,:profession,:string
    add_column :users,:gender,:integer
    add_column :users,:age,:integer
    add_column :users,:start_date,:date
    add_column :users,:profile,:text
  end
end
