class AddConstraingToDrive < ActiveRecord::Migration[5.0]
  def change
    change_column :drives, :game_id, :integer, null: false
  end
end
