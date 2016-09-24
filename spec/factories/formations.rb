# == Schema Information
#
# Table name: formations
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  receivers     :integer          not null
#  tight_ends    :integer          not null
#  running_backs :integer          not null
#  shotgun       :boolean          default(TRUE)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :formation do
    
  end
end
