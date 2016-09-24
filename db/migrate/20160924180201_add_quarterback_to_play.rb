class AddQuarterbackToPlay < ActiveRecord::Migration[5.0]
  def change
    add_column :plays, :quarterback_id, :integer, null: false
  end
end
