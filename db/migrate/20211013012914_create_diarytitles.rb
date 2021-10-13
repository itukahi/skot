class CreateDiarytitles < ActiveRecord::Migration[6.1]
  def change
    create_table :diarytitles do |t|
      t.string :title

      t.timestamps
    end
  end
end
