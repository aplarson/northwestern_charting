# == Schema Information
#
# Table name: opponents
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  conference_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Opponent < ApplicationRecord
  validates :name, presence: true

  belongs_to :conference
  has_many :games
end
