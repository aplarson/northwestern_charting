class CreateConferences < ActiveRecord::Migration[5.0]
  def change
    create_table :conferences do |t|
      t.string :name, null: false
      t.boolean :power_five, default: true
      t.boolean :fbs, default: true

      t.timestamps
    end
  end
end
