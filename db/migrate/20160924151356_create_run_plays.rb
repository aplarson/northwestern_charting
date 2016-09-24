class CreateRunPlays < ActiveRecord::Migration[5.0]
  def change
    create_table :run_plays do |t|
      t.integer :play_id
      t.integer :run_id
      t.integer :ballcarrier_id

      t.timestamps
    end
  end
end
