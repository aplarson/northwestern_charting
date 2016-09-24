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
end
