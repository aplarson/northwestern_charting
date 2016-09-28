# == Schema Information
#
# Table name: drives
#
#  id         :integer          not null, primary key
#  game_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Drive < ApplicationRecord
  validates :game, presence: true
  belongs_to :game
  has_many :plays
end
