# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  opponent_id :integer          not null
#  home        :boolean          default(TRUE)
#  date        :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  season_id   :integer          not null
#

class Game < ApplicationRecord
  belongs_to :opponent
  belongs_to :season
  has_many :plays

  validates :date, :opponent, :season, presence: true
end
