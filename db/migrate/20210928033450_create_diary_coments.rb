class CreateDiaryComents < ActiveRecord::Migration[6.1]
  def change
    create_table :diary_coments do |t|
      t.integer :user_id
      t.text :coments
      t.integer :diary_id
      t.datetime :time

      t.timestamps
    end
  end
end
