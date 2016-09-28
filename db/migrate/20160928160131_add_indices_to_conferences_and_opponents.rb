class AddIndicesToConferencesAndOpponents < ActiveRecord::Migration[5.0]
  def change
    add_index :conferences, :name, unique: true
    add_index :opponents, :name, unique: true
    add_index :opponents, :conference_id
  end
end
