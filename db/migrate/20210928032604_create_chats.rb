class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.integer :user_id
      t.integer :target_id
      t.text :contents
      t.datetime :time

      t.timestamps
    end
  end
end
