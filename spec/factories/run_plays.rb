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

FactoryGirl.define do
  factory :run_play do
    
  end
end
