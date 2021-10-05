class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.string :janru
      t.integer :channelnumber

      t.timestamps
    end
  end
end
