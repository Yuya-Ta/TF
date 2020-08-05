class CreateWorkbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :workbooks do |t|
      t.string :product
      t.string :author
      t.string :image
      t.string :link
      t.integer :all
      t.integer :listening
      t.integer :word
      t.integer :grammer

      t.timestamps
    end
  end
end
