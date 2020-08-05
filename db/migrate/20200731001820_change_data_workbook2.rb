class ChangeDataWorkbook2 < ActiveRecord::Migration[5.2]
  def change
    add_column :workbooks,:reading,:integer
  end
end
