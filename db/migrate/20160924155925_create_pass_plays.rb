class CreatePassPlays < ActiveRecord::Migration[5.0]
  def change
    create_table :pass_plays do |t|
      t.integer :play_id, null: false
      t.integer :pass_concept_id, null: false
      t.integer :quarterback_id, null: false
      t.integer :receiver_id
      t.boolean :thrown, default: true
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
