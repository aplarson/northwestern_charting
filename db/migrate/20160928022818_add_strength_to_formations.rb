class AddStrengthToFormations < ActiveRecord::Migration[5.0]
  def change
    add_column :formations, :has_run_strength, :boolean, default: true
    add_column :formations, :has_pass_strength, :boolean, default: true
    add_column :formations, :strengths_match, :boolean, default: true
  end
end
