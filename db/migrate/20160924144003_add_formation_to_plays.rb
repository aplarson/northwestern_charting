class AddFormationToPlays < ActiveRecord::Migration[5.0]
  def change
    add_column :plays, :formation_id, :integer, null: false
  end
end
