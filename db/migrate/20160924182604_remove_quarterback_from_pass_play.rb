class RemoveQuarterbackFromPassPlay < ActiveRecord::Migration[5.0]
  def change
    remove_column :pass_plays, :quarterback_id
  end
end
