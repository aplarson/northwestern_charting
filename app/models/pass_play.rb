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

class PassPlay < ApplicationRecord
  belongs_to :play
  belongs_to :pass_concept
  belongs_to :receiver, class_name: Player
  has_one :quarterback, through: :play
  
  validates :play, :pass_concept, presence: true
end
