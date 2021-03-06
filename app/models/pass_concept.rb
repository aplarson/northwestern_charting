# == Schema Information
#
# Table name: pass_concepts
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PassConcept < ApplicationRecord
  validates :name, presence: true
end
