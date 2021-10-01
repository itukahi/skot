class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.integer :user_id
      t.string :title
      t.text :contents
      t.datetime :time

      t.timestamps
    end
  end
end
