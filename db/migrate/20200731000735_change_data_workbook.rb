class ChangeDataWorkbook < ActiveRecord::Migration[5.2]
  def change
    change_column :workbooks, :link, :text
  end
end
