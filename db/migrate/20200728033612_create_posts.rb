class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :user_id
      t.integer :workbook_id
      t.integer :satisfaction
      t.integer :detail
      t.integer :volume
      t.integer :ease
      t.integer :difficaluty
      t.integer :period

      t.timestamps
    end
  end
end
