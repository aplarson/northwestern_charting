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
  validates :name, uniqueness: true

  belongs_to :conference, optional: true
  has_many :games

  def independent?
    conference == nil
  end
end
