class AddColumnDiary < ActiveRecord::Migration[6.1]
  def change

    add_column :diaries, :diarytitle_id, :integer

  end
end
