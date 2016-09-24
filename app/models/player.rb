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
  has_many :passing_plays, class_name: PassPlay, foreign_key: :quarterback_id
  has_many :receiving_plays, class_name: PassPlay, foreign_key: :receiver_id
  has_many :run_plays, foreign_key: :ballcarrier_id
end
