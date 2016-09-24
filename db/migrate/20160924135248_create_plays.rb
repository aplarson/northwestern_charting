class CreatePlays < ActiveRecord::Migration[5.0]
  def change
    create_table :plays do |t|
      t.integer :quarter, null: false
      t.string :time, null: false
      t.integer :line_of_scrimmage, null: false
      t.integer :down, null: false
      t.string :hash, null: false
      t.integer :gain, null: false
      t.text :notes
      t.timestamps
    end
  end
end
