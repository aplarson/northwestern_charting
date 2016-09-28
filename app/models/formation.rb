# == Schema Information
#
# Table name: formations
#
#  id                :integer          not null, primary key
#  name              :string           not null
#  receivers         :integer          not null
#  tight_ends        :integer          not null
#  running_backs     :integer          not null
#  shotgun           :boolean          default(TRUE)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  has_run_strength  :boolean          default(TRUE)
#  has_pass_strength :boolean          default(TRUE)
#  strengths_match   :boolean          default(TRUE)
#

class Formation < ApplicationRecord
  validates :name, :receivers, :tight_ends, :running_backs, presence: true
  validates :running_backs, inclusion: { in: 0..3 }
  validates :receivers, :tight_ends, inclusion: { in: 0..5 }

  has_many :plays
end
