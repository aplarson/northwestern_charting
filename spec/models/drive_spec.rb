# == Schema Information
#
# Table name: drives
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Drive, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
