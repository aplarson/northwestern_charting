class AddDistanceToPlay < ActiveRecord::Migration[5.0]
  def change
    add_column :plays, :distance, :integer, null: false
  end
end
