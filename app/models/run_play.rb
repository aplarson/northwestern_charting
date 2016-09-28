# == Schema Information
#
# Table name: run_plays
#
#  id             :integer          not null, primary key
#  play_id        :integer          not null
#  run_id         :integer          not null
#  ballcarrier_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  direction      :string           not null
#

class RunPlay < ApplicationRecord
  validates :direction, :play, :run, :ballcarrier, presence: true
  validates :direction, inclusion: { in: ["Right", "Left"] }

  belongs_to :run
  belongs_to :ballcarrier, class_name: Player
  belongs_to :play

  def gain
    play.gain
  end
end
