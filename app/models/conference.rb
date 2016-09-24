# == Schema Information
#
# Table name: conferences
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  power_five :boolean          default(TRUE)
#  fbs        :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Conference < ApplicationRecord
  validates :name, presence: true

  has_many :opponents
end
