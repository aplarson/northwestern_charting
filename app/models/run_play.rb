# == Schema Information
#
# Table name: run_plays
#
#  id             :integer          not null, primary key
#  play_id        :integer
#  run_id         :integer
#  ballcarrier_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class RunPlay < ApplicationRecord
end