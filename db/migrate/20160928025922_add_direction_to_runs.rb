class AddDirectionToRuns < ActiveRecord::Migration[5.0]
  def change
    add_column :run_plays, :direction, :string, null: false
  end
end
