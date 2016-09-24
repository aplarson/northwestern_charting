class CreateFormations < ActiveRecord::Migration[5.0]
  def change
    create_table :formations do |t|
      t.string :name, null: false
      t.integer :receivers, null: false
      t.integer :tight_ends, null: false
      t.integer :running_backs, null: false
      t.boolean :shotgun, default: true

      t.timestamps
    end
  end
end
