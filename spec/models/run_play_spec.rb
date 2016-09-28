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

require 'rails_helper'

RSpec.describe RunPlay, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
