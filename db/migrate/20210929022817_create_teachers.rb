class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :account
      t.string :password
      t.string :name
      t.string :hurigana
      t.integer :grade
      t.integer :klass

      t.timestamps
    end
  end
end
