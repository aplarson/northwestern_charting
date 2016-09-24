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

require 'rails_helper'

RSpec.describe PassPlay, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
