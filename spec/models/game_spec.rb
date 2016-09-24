# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  opponent_id :integer          not null
#  home        :boolean          default(TRUE)
#  date        :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  season_id   :integer          not null
#

require 'rails_helper'

RSpec.describe Game, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
