class AddPlaysToDrives < ActiveRecord::Migration[5.0]
  def change
    add_column :plays, :drive_id, :integer, null: false
  end
end
