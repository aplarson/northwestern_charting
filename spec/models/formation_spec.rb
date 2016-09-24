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

require 'rails_helper'

RSpec.describe Formation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
