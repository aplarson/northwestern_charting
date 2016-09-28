# == Schema Information
#
# Table name: plays
#
#  id                 :integer          not null, primary key
#  quarter            :integer          not null
#  time               :string           not null
#  line_of_scrimmage  :integer          not null
#  down               :integer          not null
#  hash_mark          :string           not null
#  gain               :integer          not null
#  notes              :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  distance           :integer          not null
#  formation_id       :integer          not null
#  drive_id           :integer          not null
#  quarterback_id     :integer          not null
#  formation_strength :string
#

FactoryGirl.define do
  factory :play do
    drive
    quarter 1
    time "15:00"
    down 1
    line_of_scrimmage 25
    distance 10
    gain 10
    hash_mark "R"
    formation
    quarterback
  end
end
