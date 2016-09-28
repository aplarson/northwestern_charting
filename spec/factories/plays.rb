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
    
  end
end
