# == Schema Information
#
# Table name: seasons
#
#  id         :integer          not null, primary key
#  year       :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Season < ApplicationRecord
  validates :year, numericality: true
  has_many :games
  has_many :opponents, through: :games

  def self.current
    Season.find_or_create_by(year: 2016)
  end
end
