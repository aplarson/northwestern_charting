# == Schema Information
#
# Table name: plays
#
#  id                :integer          not null, primary key
#  quarter           :integer          not null
#  time              :string           not null
#  line_of_scrimmage :integer          not null
#  down              :integer          not null
#  hash_mark         :string           not null
#  gain              :integer          not null
#  notes             :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  distance          :integer          not null
#  formation_id      :integer          not null
#

class Play < ApplicationRecord
  validates :quarter, :time, :line_of_scrimmage, :down, :distance, :hash_mark, :gain, presence: true

  validates :down, inclusion: { in: [1, 2, 3, 4] }
  validates :quarter, inclusion: { in: 1..5 }
  validates :line_of_scrimmage, inclusion: { in: 1..99 }
  validates :hash_mark, inclusion: { in: ["R", "L", "C"] }

  belongs_to :game
  belongs_to :formation
  has_one :run_play
  has_one :pass_play

  def success?
    if down == 1
      gain >= 0.5 * distance
    elsif down == 2
      gain >= 0.7 * distance
    else
      gain >= distance
    end
  end

  def half
    if quarter < 3
      1
    elsif quarter < 5
      2
    else
      # Overtime
      3
    end
  end
end
