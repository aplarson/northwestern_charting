class AddStrengthToPlay < ActiveRecord::Migration[5.0]
  def change
    add_column :plays, :formation_strength, :string
  end
end
