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

class Player < ApplicationRecord
end
