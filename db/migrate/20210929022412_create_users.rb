class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :account
      t.string :password
      t.string :name
      t.string :hurigana
      t.integer :grade
      t.integer :klass
      t.integer :number

      t.timestamps
    end
  end
end
