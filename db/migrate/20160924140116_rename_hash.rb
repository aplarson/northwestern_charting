class RenameHash < ActiveRecord::Migration[5.0]
  def change
    rename_column :plays, :hash, :hash_mark
  end
end
