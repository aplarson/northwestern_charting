# == Schema Information
#
# Table name: pass_plays
#
#  id              :integer          not null, primary key
#  play_id         :integer          not null
#  pass_concept_id :integer          not null
#  receiver_id     :integer
#  thrown          :boolean          default(TRUE)
#  complete        :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :pass_play do
    
  end
end
