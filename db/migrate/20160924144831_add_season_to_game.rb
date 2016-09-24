class AddSeasonToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :season_id, :integer, null: false
  end
end
