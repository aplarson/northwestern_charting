# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  position   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Player, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
