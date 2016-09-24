# == Schema Information
#
# Table name: drives
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Drive < ApplicationRecord
  belongs_to :game
  has_many :plays
end
