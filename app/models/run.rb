# == Schema Information
#
# Table name: runs
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Run < ApplicationRecord
  validates :name, presence: true

  has_many :run_plays
  has_many :ballcarriers, through: :run_plays
end
