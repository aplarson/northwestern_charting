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

FactoryGirl.define do
  factory :opponent do
    
  end
end
