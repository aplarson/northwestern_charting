# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  position   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ApplicationRecord
  validates :first_name, :last_name, :position, presence: true

  has_many :quarterback_plays, class_name: Play, foreign_key: :quarterback_id
  has_many :receiving_plays, class_name: PassPlay, foreign_key: :receiver_id
  has_many :run_plays, foreign_key: :ballcarrier_id

  # Returns the player's total yardage on rushing plays.
  def rushing_yards
    
  end
end
