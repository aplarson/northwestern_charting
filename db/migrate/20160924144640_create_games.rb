class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :opponent_id, null: false
      t.boolean :home, default: true
      t.date :date, null: false

      t.timestamps
    end
  end
end
