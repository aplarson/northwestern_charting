class AddRunPlayConstraints < ActiveRecord::Migration[5.0]
  def change
    change_column :run_plays, :play_id, :integer, null: false
    change_column :run_plays, :run_id, :integer, null: false
    change_column :run_plays, :ballcarrier_id, :integer, null: false
  end
end
