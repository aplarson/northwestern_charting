class CreateOpponents < ActiveRecord::Migration[5.0]
  def change
    create_table :opponents do |t|
      t.string :name, null: false
      t.integer :conference_id

      t.timestamps
    end
  end
end
